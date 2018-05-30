package rcomm;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.xtuml.bp.core.ComponentInstance_c;
import org.xtuml.bp.core.CorePlugin;

import rcomm.shared.ILocationDataFromProvider;
import rcomm.shared.ILocationDataToProvider;
import rcomm.shared.IRCommFromProvider;
import rcomm.shared.IRCommToProvider;

public class RComm implements IRCommToProvider, ILocationDataFromProvider {
    
    IRCommFromProvider rcomm_from_provider;
    ILocationDataToProvider location_data_to_provider;

    private static SocketCommunicator rover = new SocketCommunicator();
    private static SocketCommunicator ref = new SocketCommunicator();

    public static final String IP = "127.0.0.1";
    public static final String CONFIG_FILE = "git/models/applications/rover/Settings/config.txt";
    
    private static final Pattern replyPattern = Pattern.compile( "Rover,([0-9]\\.[0-9]+);" );

    public RComm( IRCommFromProvider rcomm_from_provider, ILocationDataToProvider location_data_to_provider ) {
        this.rcomm_from_provider = rcomm_from_provider;
        this.location_data_to_provider = location_data_to_provider;
        setup();
    }

    @Override
    public void setForwardPower( ComponentInstance_c senderReceiver, int power ) {
        rover.noReply( "Rover,setForwardPower(" + new Integer( power ).toString() + ")" );
    }

    @Override
    public void incrementPower( ComponentInstance_c senderReceiver, int power ) {
        rover.noReply( "Rover,incrementPower(" + new Integer( power ).toString() + ")" );
    }

    @Override
    public void setLRPower( ComponentInstance_c senderReceiver, int lpower, int rpower ) {
        rover.noReply( "Rover,setLRPower(" + new Integer( lpower ).toString() + "," + new Integer( rpower ).toString() + ")" );
    }

    @Override
    public void brake( ComponentInstance_c senderReceiver, int power ) {
        rover.noReply( "Rover,brake(" + new Integer( power ).toString() + ")" );
    }

    @Override
    public void pollLeaderX( ComponentInstance_c senderReceiver ) {
        String reply = ref.send( "posx" );
        float x = 0;
        try {
            x = Float.parseFloat( reply );
        }
        catch ( NullPointerException e ) {}
        catch ( NumberFormatException e ) {}
        location_data_to_provider.leaderX( null, x );
    }

    @Override
    public void pollLeaderZ( ComponentInstance_c senderReceiver ) {
        String reply = ref.send( "posz" );
        float z = 0;
        try {
            z = Float.parseFloat( reply );
        }
        catch ( NullPointerException e ) {}
        catch ( NumberFormatException e ) {}
        location_data_to_provider.leaderZ( null, z );
    }

    @Override
    public void pollRoverX( ComponentInstance_c senderReceiver ) {
        String reply = rover.send( "Rover,GPSx()" );
        float x = 0;
        try {
            Matcher matcher = replyPattern.matcher( reply );
            if ( matcher.matches() ) x = Float.parseFloat( matcher.group( 1 ) );
        }
        catch ( NullPointerException e ) {}
        catch ( NumberFormatException e ) {}
        location_data_to_provider.roverX( null, x );
    }

    @Override
    public void pollRoverY( ComponentInstance_c senderReceiver ) {
        String reply = rover.send( "Rover,GPSy()" );
        float y = 0;
        try {
            Matcher matcher = replyPattern.matcher( reply );
            if ( matcher.matches() ) y = Float.parseFloat( matcher.group( 1 ) );
        }
        catch ( NullPointerException e ) {}
        catch ( NumberFormatException e ) {}
        location_data_to_provider.roverY( null, y );
    }

    @Override
    public void pollRoverZ( ComponentInstance_c senderReceiver ) {
        String reply = rover.send( "Rover,GPSz()" );
        float z = 0;
        try {
            Matcher matcher = replyPattern.matcher( reply );
            if ( matcher.matches() ) z = Float.parseFloat( matcher.group( 1 ) );
        }
        catch ( NullPointerException e ) {}
        catch ( NumberFormatException e ) {}
        location_data_to_provider.roverZ( null, z );
    }

    @Override
    public void pollRoverCompass( ComponentInstance_c senderReceiver ) {
        String reply = rover.send( "Rover,getCompass()" );
        float degrees = 0;
        try {
            Matcher matcher = replyPattern.matcher( reply );
            if ( matcher.matches() ) degrees = Float.parseFloat( matcher.group( 1 ) );
        }
        catch ( NullPointerException e ) {}
        catch ( NumberFormatException e ) {}
        location_data_to_provider.roverCompass( null, degrees );
    }

    @Override
    public void pollDistance( ComponentInstance_c senderReceiver ) {
        String reply = ref.send( "dist" );
        float dist = 0;
        try {
            dist = Float.parseFloat( reply );
        }
        catch ( NullPointerException e ) {}
        catch ( NumberFormatException e ) {}
        location_data_to_provider.distance( null, dist );
    }

    @Override
    public void ready( ComponentInstance_c senderReceiver ) {
        ref.send( "ready" ); // Ignore acknowledgement reply
    }

    public void setup() {
        int refPort = 0;
        int roverPort = 0;
        try{
            //------ Load config
            java.util.List<String> conf = readFile( System.getenv( "HOME" ) + "/" + CONFIG_FILE );
            Iterator<String> conIt = conf.iterator();
            while (conIt.hasNext()) {
                String a = conIt.next();
                if (a.contains("=") == true) {
                    String b = a.substring(0, a.indexOf('='));
                    if (b.equals("controlPort"))
                        roverPort = Integer.parseInt(a.substring(a.indexOf('=')+1));
                    if (b.equals("observationPort"))
                        refPort = Integer.parseInt(a.substring(a.indexOf('=')+1));
                }
            }
            rover.connectToServer(IP,roverPort);
            ref.connectToServer(IP,refPort);
        }
        catch (Exception e){}
    }

    // file read
    public static java.util.List<String> readFile(String fileName) {
        File file = new File(fileName);
        // this gives you a 2-dimensional array of strings
        java.util.List<String> data = new ArrayList<>();
        Scanner inputStream;
        try {
            inputStream = new Scanner(file);

            while (inputStream.hasNext()) {
                data.add(inputStream.next());
            }
            inputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace( CorePlugin.out );
        }
        return data;
    }

    static class SocketCommunicator {

        private BufferedReader in;
        private PrintWriter out = null;
        private Socket socket = null;

        public SocketCommunicator() {
        }

        public void connectToServer(String IP, int port) throws IOException {
            // Make connection and initialize streams
            socket = new Socket(IP, port);
            in = new BufferedReader(
            new InputStreamReader(socket.getInputStream()));
            out = new PrintWriter(socket.getOutputStream(), true);
            CorePlugin.out.println("connected");
        }

        // Send command for sending a message through the socket and returning the reply
        public String send(String message) {
            String reply = null;
            if (out == null){
              CorePlugin.out.println("fail - socket error");
            }
            out.println(message);
            try {
                reply = in.readLine();
            }
            catch(java.io.IOException e){ e.printStackTrace( CorePlugin.out );}
            return reply;
        }
        // expecting no reply.
        public void noReply(String message){
          out.println(message);
        }

        // Closes the connection on the socket
        public void close(){
            try {
                socket.close();
            }
            catch(java.io.IOException e){ e.printStackTrace( CorePlugin.out );}
        }
    }

}
