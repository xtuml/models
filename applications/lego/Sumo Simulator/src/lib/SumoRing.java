package lib;


import java.awt.BasicStroke;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.JComponent;
import javax.swing.JFrame;

import net.phys2d.math.Vector2f;
import net.phys2d.raw.World;

public class SumoRing extends JFrame {
	public static final long serialVersionUID = 0;
	public static Object lock = new Object();

	public static final float SCALE_FACTOR       = 4;
	public static final float RING_RADIUS        = 60f;
	public static final float RING_SIDE          = 10f;
	public static final int   RING_SIDE_PX       = (int)(RING_SIDE * SCALE_FACTOR);
	public static final float LINE_THINKNESS     = 4f; 
	public static final float RING_CENTER_X      = 0f;
	public static final float RING_CENTER_Y      = 0f;
	public static final int   RING_RADIUS_PX     = (int)(RING_RADIUS * SCALE_FACTOR);
	public static final int   RING_DIAMETER_PX   = RING_RADIUS_PX * 2;
	public static final int   SCREEN_RADIUS_PX   = (int)((RING_RADIUS + RING_SIDE) * SCALE_FACTOR);
	public static final int   SCREEN_DIAMETER_PX = SCREEN_RADIUS_PX * 2;
	public static final float PI                 = (float)Math.PI;

	public static final int DIRECTION_BACKWARD   = 0;
	public static final int DIRECTION_STOP       = 1;
	public static final int DIRECTION_FORWARD    = 2;
	
	public static final int ORIENTATION_LEFT     = 0;
	public static final int ORIENTATION_STRAIGHT = 1;
	public static final int ORIENTATION_RIGHT    = 2;
	
	private BufferedImage offScreenBuffer = null;
	private SumoSimulatorProxy proxy;
	private World sumoRing;
	private SumoRobot sumo1;
	private SumoRobot sumo2;
	private JComponent testCanvas;
	private Graphics2D g2d;
	private String gameTitle = "";
	private Font font;
	private boolean gameOver = false;
	private String name = "Unknown";
	private int sumo1Score = 0;
	private int sumo2Score = 0;
	private boolean sumo1Skin = true;
	private boolean sumo2Skin = true;
	
	public SumoRing() {
		this.proxy = new SumoSimulatorProxy(this);
		
		setTitle("Sumo Simulator");
		setSize(new Dimension(SCREEN_DIAMETER_PX + 18, SCREEN_DIAMETER_PX + 45));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		testCanvas = new JComponent() {
			public static final long serialVersionUID = 0;
			public void paint(Graphics g) {
				synchronized (lock) {
					g.drawImage(offScreenBuffer, 0, 0, null);
				}
			}

			public boolean isDoubleBuffered() {
				return false;
			}
		};
		
		add(testCanvas,BorderLayout.CENTER);
		setLocationRelativeTo(null);
		setAlwaysOnTop(true);
		setVisible(true);
		
		offScreenBuffer = (BufferedImage)testCanvas.createImage(SCREEN_DIAMETER_PX, SCREEN_DIAMETER_PX);
		g2d = offScreenBuffer.createGraphics();
		g2d.setBackground(Color.WHITE);
		g2d.setStroke(new BasicStroke(LINE_THINKNESS * SCALE_FACTOR));
		g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                RenderingHints.VALUE_ANTIALIAS_ON);
		font = new Font("Arial", Font.BOLD, 20);
		g2d.setFont(font);
		initWorld();
		renderScreen();
	}
	private void setCpuSkin(boolean skin) {
		sumo1Skin = skin;
		renderScreen();
	}
	private void setModelSkin(boolean skin) {
		sumo2Skin = skin;
		renderScreen();
	}
	
	private void initWorld() {
		sumoRing = new World(new Vector2f(0f, 0f), 1);
		int numberGames = sumo1Score + sumo2Score;
		
		// swap position every second finished game
		if (numberGames % 2 == 0) {
			sumo1 = new SumoRobot(sumoRing, new Vector2f(RING_CENTER_X - 3, RING_CENTER_Y + 10), 0, 50, 50, null);
			sumo2 = new SumoRobot(sumoRing, new Vector2f(RING_CENTER_X + 3, RING_CENTER_Y - 10), PI, 80, 20, proxy);
		} else {
			sumo1 = new SumoRobot(sumoRing, new Vector2f(RING_CENTER_X + 3, RING_CENTER_Y - 10), PI, 50, 50, null);
			sumo2 = new SumoRobot(sumoRing, new Vector2f(RING_CENTER_X - 3, RING_CENTER_Y + 10), 0, 80, 20, proxy);
		}
		sumo2.setName(name);
		gameTitle = "Computer vs. " + name;
		gameOver = false;
	}


	public void registerSumo(String name) {
		this.name = name;
		sumo2.setName(name);
		gameTitle = "Computer vs. " + name;
	}
	
	public void tick() {
		sumoRing.step();
		if (!gameOver) {
			if (sumo1.isLost()) {
				sumo2Score++;
				gameOver = true;
			} else if (sumo2.isLost()) {
				sumo1Score++;
				gameOver = true;
			}
		}
		renderScreen();
	}
	
	public void reset() {
		initWorld();
		renderScreen();
	}
	
	private void renderScreen() {

		String score = sumo1Score + " - " + sumo2Score;
		Rectangle2D sumosRect = font.getStringBounds(gameTitle, g2d.getFontRenderContext());
		Rectangle2D scoreRect = font.getStringBounds(score, g2d.getFontRenderContext());

		synchronized (lock) {
			sumo1.step();
			sumo2.step();
			g2d.clearRect(0, 0, SCREEN_DIAMETER_PX, SCREEN_DIAMETER_PX); 
			g2d.setColor(Color.BLACK);

			g2d.drawOval(RING_SIDE_PX, RING_SIDE_PX, RING_DIAMETER_PX, RING_DIAMETER_PX);
			
			g2d.drawString(score, SCREEN_RADIUS_PX - (int)scoreRect.getWidth() / 2, SCREEN_RADIUS_PX + 90);
			g2d.drawString(gameTitle, SCREEN_RADIUS_PX - (int)sumosRect.getWidth() / 2, SCREEN_RADIUS_PX + 60);
			
			sumo1.draw(g2d, sumo1Skin);
			sumo2.draw(g2d, sumo2Skin);
		}
		testCanvas.repaint();
	}
	
	public static BufferedImage loadImage(String imageFilePath) {
		try {
			URL imgURL = ClassLoader.getSystemResource(imageFilePath);
			File imageFile;
			if (imgURL != null) {
				imageFile = new File(imgURL.toURI());
			} else {
				System.err.println("Couldn't find file: " + imageFilePath);
				return null;
			}
			return ImageIO.read(imageFile);
		} catch(Exception e) {
			System.out.println("Failed to load " + imageFilePath);
			System.out.println(e.toString());
			return null;
		}
	}
	
	public void turn(int orientation) {
		sumo2.turn(orientation);
	}
	
	public void go(int direction) {
		sumo2.go(direction);
	}

	/**
	 * The program begins here.
	 *
	 * @param args  This is unused.
	 */
	public static void main(String[] args) {
		SumoRing ring = new SumoRing();
		for (int i = 0; i + 1 < args.length; i++) {
			String flag = args[i++];
			if (flag.equals("-model")) {
				if (args[i].equals("noskin")) {
					ring.setModelSkin(false);
				} else {
					System.err.println("Unrecognized value: '" + args[i] + "' for flag: '" + flag + "'");
				}
			} else if (flag.equals("-cpu")) {
				if (args[i].equals("noskin")) {
					ring.setCpuSkin(false);
				} else {
					System.err.println("Unrecognized value: '" + args[i] + "' for flag: '" + flag + "'");
				}
			} else{
				System.err.println("Unrecognized flag: '" + flag + "'");
			}
		}
	}

}
