package keypadui;

import java.awt.BorderLayout;
import java.awt.Image;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JLayeredPane;
import javax.swing.JPanel;

public class KeypadUI extends JFrame {

    public static final long serialVersionUID = 0;

    private KeypadUI.ApplicationConnection server;
    private JPanel panel = new JPanel();
    
    // SERVER CONSTANTS
    private static final int PORT_NUM = 2003;
    
    // UI LAYOUT CONSTANTS
    private static final int DISPLAY_MAX_DIGITS = 9;

    private static final int UI_WIDTH = 1400;
    private static final int UI_HEIGHT = 1958;
    
    private static final int DIGIT_WIDTH = 122;
    private static final int POINT_WIDTH = 130;
    private static final int DIGIT_HEIGHT = 259;

    private static final int DIGIT_X_OFFSET = 150;
    private static final int DIGIT_Y_OFFSET = 119;
    
    private static final int BUTTON_WIDTH = 313;
    private static final int BUTTON_HEIGHT = 278;

    // The buttons are laid out in a 4x5 grid
    private static final int[] BUTTON_COL_OFFSET = { 72, 386, 699, 1013 };
    private static final int[] BUTTON_ROW_OFFSET = { 475, 752, 1029, 1306, 1584 };
    private static final int NUM_BUTTONS = BUTTON_COL_OFFSET.length * BUTTON_ROW_OFFSET.length;
    
    // static icons
    private ImageIcon background;
    private ImageIcon overlay;
    private ImageIcon pressedButton;
    private ImageIcon pressedEqualButton;
    private ImageIcon point;
    private ImageIcon negative;
    private ImageIcon e;
    private ImageIcon r;
    private ImageIcon o;
    private ImageIcon digit[] = new ImageIcon[10];

    // UI labels
    private JLabel backgroundLabel = new JLabel();
    private JLabel overlayLabel = new JLabel();
    private JLabel buttonLabel[] = new JLabel[NUM_BUTTONS];
    private JLabel[] digitLabel = new JLabel[DISPLAY_MAX_DIGITS];
    private JLabel[] pointLabel = new JLabel[DISPLAY_MAX_DIGITS];

    // button info
    private ButtonInfo[] buttonInfo;

    // The UI assets were designed much larger than need be. This
    // method scales them to a reasonable size for the application.
    private static int scale( int value ) {
        int SCALE_FACTOR = 4;
        return value / SCALE_FACTOR;
    }

    // create scaled image assets
    private ImageIcon createStandaloneImageIcon( String path ) {
        URL imgURL = ClassLoader.getSystemResource( path );
        if ( imgURL != null ) {
            ImageIcon origIcon = new ImageIcon( imgURL );
            Image origImage = origIcon.getImage();
            return new ImageIcon( origImage.getScaledInstance( scale( origIcon.getIconWidth() ),
                    scale( origIcon.getIconHeight() ), Image.SCALE_SMOOTH ) );
        } else {
            System.err.println( "Couldn't find file: " + path );
            return null;
        }
    }

    // load all icons
    private void createImageIcons() {
        background          = createStandaloneImageIcon( "icons/Background.png" );
        overlay             = createStandaloneImageIcon( "icons/Overlay.png" );
        pressedButton       = createStandaloneImageIcon( "icons/PressedButton.png" );
        pressedEqualButton  = createStandaloneImageIcon( "icons/PressedEqualButton.png" );
        point               = createStandaloneImageIcon( "icons/Point.png" );
        negative            = createStandaloneImageIcon( "icons/Negative.png" );
        e                   = createStandaloneImageIcon( "icons/E.png" );
        r                   = createStandaloneImageIcon( "icons/R.png" );
        o                   = createStandaloneImageIcon( "icons/O.png" );
        for ( int i = 0; i < digit.length; i++ ) {
            digit[i]        = createStandaloneImageIcon( "icons/" + i + ".png" );
        }
    }

    public KeypadUI() {
        // the connection handle lives for the entire duration of this program
        new ConnectionHandler().start();

        // load images that make up the GUI
        createImageIcons();

        // set up button info
        buttonInfo = new ButtonInfo[] { null, null, null, new ButtonInfo( pressedButton, -1 ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_SEVEN ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_EIGHT ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_NINE ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_DIVIDE ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_FOUR ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_FIVE ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_SIX ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_TIMES ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_ONE ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_TWO ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_THREE ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_MINUS ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_ZERO ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_POINT ),
                                        new ButtonInfo( pressedButton, KeySignal.KEYCODE_PLUS ),
                                        new ButtonInfo( pressedEqualButton, KeySignal.KEYCODE_EQUAL ) };

        // container holding all button/display images
        JLayeredPane pane = new JLayeredPane();

        // background image
        backgroundLabel.setBounds( 0, 0, scale( UI_WIDTH ), scale( UI_HEIGHT ) );
        backgroundLabel.setIcon( background );

        // overlay image
        overlayLabel.setBounds( 0, 0, scale( UI_WIDTH ), scale( UI_HEIGHT ) );
        overlayLabel.setIcon( overlay );

        // display digits
        for ( int i = 0; i < DISPLAY_MAX_DIGITS; i++ ) {
            digitLabel[i] = new JLabel();
            digitLabel[i].setBounds( scale( DIGIT_X_OFFSET + DIGIT_WIDTH * i ), scale( DIGIT_Y_OFFSET ), scale( DIGIT_WIDTH ), scale( DIGIT_HEIGHT ) );
        }

        // decimal points
        for ( int i = 0; i < DISPLAY_MAX_DIGITS; i++ ) {
            pointLabel[i] = new JLabel();
            pointLabel[i].setBounds( scale( DIGIT_X_OFFSET + DIGIT_WIDTH * i ), scale( DIGIT_Y_OFFSET ), scale( POINT_WIDTH ), scale( DIGIT_HEIGHT ) );
            pointLabel[i].setIcon( point );
            pointLabel[i].setVisible( false );
        }

        // input buttons
        for ( int x = 0; x < BUTTON_COL_OFFSET.length; x++ ) {
            for ( int y = 0; y < BUTTON_ROW_OFFSET.length; y++ ) {
                int i = y * BUTTON_COL_OFFSET.length + x;
                buttonLabel[i] = new JLabel();
                buttonLabel[i].setBounds( scale( BUTTON_COL_OFFSET[x] ), scale( BUTTON_ROW_OFFSET[y] ), scale( BUTTON_WIDTH ), scale( BUTTON_HEIGHT ) );
                if ( null != buttonInfo[i] ) {
                    SignalData signal;
                    if ( -1 == buttonInfo[i].keycode ) {
                        signal = new ClearSignal();
                    }
                    else {
                        signal = new KeySignal( buttonInfo[i].keycode );
                    }
                    buttonLabel[i].addMouseListener( new ButtonListener( buttonInfo[i].pressedIcon ) {
                        @Override
                        public void buttonPressed() {
                            KeypadUI.this.buttonPressed( signal );
                        }
                    } );
                }
            }
        }

        // add button/display images to a layer where they are visible
        pane.add( backgroundLabel, JLayeredPane.DEFAULT_LAYER );
        pane.add( overlayLabel, JLayeredPane.MODAL_LAYER );
        for ( int i = 0; i < DISPLAY_MAX_DIGITS; i++ ) {
            pane.add( digitLabel[i], JLayeredPane.PALETTE_LAYER );
        }
        for ( int i = 0; i < DISPLAY_MAX_DIGITS; i++ ) {
            pane.add( pointLabel[i], JLayeredPane.PALETTE_LAYER );
        }
        for ( int i = 0; i < NUM_BUTTONS; i++ ) {
            pane.add( buttonLabel[i], JLayeredPane.PALETTE_LAYER );
        }

        panel.setLayout( new BorderLayout() );
        panel.add( pane, BorderLayout.CENTER );

        getContentPane().add( pane, BorderLayout.CENTER );

        setLocation( 0, 0 );
        setSize( scale( UI_WIDTH ), scale( UI_HEIGHT ) + 20 );
        setAlwaysOnTop( true );
        setIconImage( background.getImage() );
        setTitle( "Calculator" );
        setDefaultCloseOperation( EXIT_ON_CLOSE );
        
        // display an initial value
        displayValue( 0 );
    }
    
    // handle button press
    private void buttonPressed( SignalData data ) {
        if ( server != null && !server.connection.isClosed() ) {
            server.sendSignal( data );
        }
    }
    
    // display a real value. if the integer portion of the value
    // is too big to fit on the screen, it is an error
    private void displayValue( double value ) {
        clearDisplay();
        List<ImageIcon> digitIcons = new ArrayList<ImageIcon>();
        
        // add negative sign if applicable
        if ( value < 0 ) {
            digitIcons.add( negative );
        }

        // get the integer portion
        int integerPortion = (int)Math.abs( value );
        if ( integerPortion > 0 ) {
            int order = (int)Math.pow( 10, (int)Math.log10( integerPortion ) );
            while ( order >= 1 ) {
              // get the correct digit icon
              digitIcons.add( digit[integerPortion / order] );
              // update integer portion
              integerPortion -= ( integerPortion / order ) * order;
              // decrement order
              order /= 10;
            }
        }
        else {
            // always display a leading zero
            digitIcons.add( digit[0] );
        }
        
        // check if the integer size is out of range
        if ( digitIcons.size() > DISPLAY_MAX_DIGITS ) {
            displayError();
            return;
        }
        
        // set the point index
        int pointIndex = digitIcons.size() - 1;
        
        // get the decimal portion
        double decimalPortion = Math.abs( value ) - (int)Math.abs( value );
        while ( decimalPortion != 0 && digitIcons.size() <= DISPLAY_MAX_DIGITS ) {
            // get the correct digit icon
            digitIcons.add( digit[(int)( decimalPortion * 10 )] );
            // update the decimal portion
            decimalPortion = ( decimalPortion * 10 ) - (int)( decimalPortion * 10 );
        }
        
        // fill empty spaces with nulls
        while ( DISPLAY_MAX_DIGITS - digitIcons.size() > 0 ) {
            digitIcons.add( 0, null );
            pointIndex++;
        }

        // fill the display up to DISPLAY_MAX_DIGITS digits from the list; right justify
        for ( int i = 0; i < DISPLAY_MAX_DIGITS ; i++ ) {
            digitLabel[i].setIcon( digitIcons.get( i ) );
        }
        
        // set the decimal point
        if ( 0 <= pointIndex && pointIndex < ( DISPLAY_MAX_DIGITS-1 ) ) {
            pointLabel[pointIndex].setVisible( true );
        }
    }
    
    // clear the display
    private void clearDisplay() {
        for ( int i = 0; i < DISPLAY_MAX_DIGITS ; i++ ) {
            digitLabel[i].setIcon( null );
            pointLabel[i].setVisible( false );
        }
    }
    
    // display the word "Error"
    private void displayError() {
        clearDisplay();
        List<ImageIcon> digitIcons = new ArrayList<ImageIcon>();
        
        // add letters
        digitIcons.add( e );
        digitIcons.add( r );
        digitIcons.add( r );
        digitIcons.add( o );
        digitIcons.add( r );

        // fill empty spaces with nulls
        while ( DISPLAY_MAX_DIGITS - digitIcons.size() > 0 ) {
            digitIcons.add( 0, null );
        }

        // fill the display up to DISPLAY_MAX_DIGITS digits from the list; right justify
        for ( int i = 0; i < DISPLAY_MAX_DIGITS ; i++ ) {
            digitLabel[i].setIcon( digitIcons.get( i ) );
        }
    }

    // A generic button listener that will switch images when buttons are pressed/released
    private abstract class ButtonListener implements MouseListener {

        private ImageIcon pressedIcon;

        private ButtonListener( ImageIcon pressedIcon ) {
            this.pressedIcon = pressedIcon;
        }

        @Override
        public void mouseExited( MouseEvent me ) {}

        @Override
        public void mousePressed( MouseEvent me ) {
            ( (JLabel) me.getSource() ).setIcon( pressedIcon );
        }

        @Override
        public void mouseEntered( MouseEvent me ) {}

        @Override
        public void mouseReleased( MouseEvent me ) {
            ( (JLabel) me.getSource() ).setIcon( null );
            buttonPressed();
        }

        @Override
        public void mouseClicked( MouseEvent me ) {}

        protected abstract void buttonPressed();
    }
    
    // store button conviguration info
    private class ButtonInfo {
        
        protected ImageIcon pressedIcon;
        protected int keycode;
        
        private ButtonInfo( ImageIcon pressedIcon, int keycode ) {
            this.pressedIcon = pressedIcon;
            this.keycode = keycode;
        }

    }

    // The ConnectionHandler sits and waits for clients to connect.
    // As soon as a new connection is detected, any existing connections are
    // released, allowing the most recently connected client to control and be
    // controlled by the GUI.
    public class ConnectionHandler extends Thread {

        ServerSocket providerSocket;

        @Override
        public void run() {
            try {
                providerSocket = new ServerSocket( PORT_NUM );
                System.out.println( "Waiting for connection" );
                Socket connection = providerSocket.accept();
                while ( true ) {
                    server = new ApplicationConnection( connection );
                    server.start();
                    Socket newConnection = providerSocket.accept();
                    connection.close();
                    connection = newConnection;
                }
            } catch ( IOException ioException ) {
                ioException.printStackTrace();
            } finally {
                try {
                    providerSocket.close();
                } catch ( IOException ioException ) {
                    ioException.printStackTrace();
                }
                new ConnectionHandler().start();
            }
        }
    }

    // The ApplicationConnection> is the connection to the
    // underlying application that takes input from the GUI and displays data
    // via the GUI. Messages are from the application are received on this
    // thread. Message sending occurs from the UI thread.
    public class ApplicationConnection extends Thread {
        Socket connection = null;
        DataOutputStream out;
        BufferedReader in;
        String message = "";

        public ApplicationConnection( Socket connection ) {
            this.connection = connection;
        }

        public void sendSignal( SignalData data ) {
            try {
                data.serialize( out );
                out.write( '\n' );
                out.flush();
            } catch ( IOException ioException ) {
                ioException.printStackTrace();
            }
        }

        public void run() {
            try {
                System.out.println( "Connection received from " + connection.getInetAddress().getHostName() );
                out = new DataOutputStream( connection.getOutputStream() );
                out.flush();
                in = new BufferedReader( new InputStreamReader( connection.getInputStream() ) );

                // main loop
                while ( true ) {
                    try {
                        String msg = in.readLine();
                        if ( null == msg ) throw new NullPointerException();

                        // data arrives in a comma separated list
                        StringTokenizer tokenizer = new StringTokenizer( msg, "," );
                        SignalData data = null;

                        // work out the data type of the incoming message
                        // and set the action ( run() ) to be carried out
                        switch ( Integer.parseInt( tokenizer.nextToken() ) ) {
                        case SignalData.SIGNAL_NO_RESULT:
                            data = new ResultSignal() {
                                public static final long serialVersionUID = 0;

                                @Override
                                public void run() {
                                    displayValue( value );
                                }
                            };
                            break;
                        case SignalData.SIGNAL_NO_ERROR:
                            data = new ErrorSignal() {
                                public static final long serialVersionUID = 0;

                                @Override
                                public void run() {
                                    System.err.println( message );
                                    displayError();
                                }
                            };
                            break;
                        default:
                            break;
                        }

                        // initialize data from the incoming message
                        data.unserialize( tokenizer );

                        // execute the associated action
                        data.run();
                    } catch ( IOException | NullPointerException e ) {
                        System.out.println( "Connection closed by client." );
                        break;
                    }
                }
            } catch ( IOException ioe ) {
                ioe.printStackTrace();
            } finally {
                try {
                    connection.close();
                } catch ( IOException ioException ) {
                    ioException.printStackTrace();
                }
            }
        }
    }

    public static void main( String[] args ) {
        KeypadUI gui = new KeypadUI();
        gui.setVisible( true );
    }
}
