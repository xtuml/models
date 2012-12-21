package lib;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;

import net.phys2d.math.MathUtil;
import net.phys2d.math.Matrix2f;
import net.phys2d.math.ROVector2f;
import net.phys2d.math.Vector2f;
import net.phys2d.raw.Body;
import net.phys2d.raw.FixedJoint;
import net.phys2d.raw.World;
import net.phys2d.raw.shapes.Box;

public class SumoRobot {
	private static final float BODY_WIDTH  = 11f;
	private static final float BODY_LENGTH = 11f;
	private static final float BODY_WEIGHT = 0.650f;
	
	private static final float CATERPILLAR_WIDTH  = 2f;
	private static final float CATERPILLAR_LENGTH = 13f;
	private static final float CATERPILLAR_WEIGHT  = 0.05f;
	
	private static final float BUMPER_WIDTH  = 7f;
	private static final float BUMPER_LENGTH = 4f;
	private static final float BUMPER_WEIGHT  = 0.0425f;
	private static final float BUMPER_OFFSET = 4f;

	private static final float BODY_BUMPER_DIST = 10.5f;
	private static final float BODY_CP_DIST     = 6.5f;
	
	private static final float CATERPILLAR_FRICTION = 3.0f;
	
	private Body body;
	private Body leftCp;
	private Body rightCp;
	private Body leftBumper;
	private Body rightBumper;
	private int leftSpeed = SumoRing.DIRECTION_STOP;
	private int cachedLeftSpeed = leftSpeed;
	private int rightSpeed = SumoRing.DIRECTION_STOP;
	private int cachedRightSpeed = rightSpeed;
	
	private static final int ATTACKING = 0;
	private static final int RETRIETING = 1;
	private static final int AIMING = 2;
	private int state = ATTACKING;
	private int timer = -1; 
	private int retTime = 0;
	private int aimTime = 0;
	private String name = "";
	private SumoSimulatorProxy proxy;
	private BufferedImage bufferedImage;
	private BufferedImage bufferedImage1;
	private boolean insideRing = true;
	private boolean lost = false;
	private long leftcounter = 0;
	private long oldleftcounter = 0;
	private long rightcounter = 0;
	private long oldrightcounter = 0;
	
	
	public boolean isLost() {
		return lost;
	}
	public void setLost(boolean lost) {
		this.lost = lost;
	}
	public SumoRobot(World sumoRing, Vector2f pos, float rot, int rt, int at, SumoSimulatorProxy proxy) {
		this.proxy = proxy;
		if (proxy == null) {
			leftSpeed = cachedLeftSpeed = SumoRing.DIRECTION_FORWARD;
			rightSpeed = cachedRightSpeed = SumoRing.DIRECTION_FORWARD;
		}
		this.retTime = rt;
		this.aimTime = at;
		
		body    = new Body(new Box(BODY_LENGTH, BODY_WIDTH), BODY_WEIGHT);
		leftCp  = new Body(new Box(CATERPILLAR_LENGTH, CATERPILLAR_WIDTH), CATERPILLAR_WEIGHT);
		rightCp = new Body(new Box(CATERPILLAR_LENGTH, CATERPILLAR_WIDTH), CATERPILLAR_WEIGHT);
		leftBumper = new Body(new Box(BUMPER_LENGTH, BUMPER_WIDTH), BUMPER_WEIGHT) {
			@Override
			public strictfp void collided(Body other) {
				super.collided(other);
				if (SumoRobot.this.proxy != null) {
					// don't act on collisions with bodies that belong to this sumo
					if (other != body && other != leftCp && other != rightBumper) {
						leftcounter++;
					}
				}
			}
		};
		rightBumper = new Body(new Box(BUMPER_LENGTH, BUMPER_WIDTH), BUMPER_WEIGHT) {
			@Override
			public strictfp void collided(Body other) {
				super.collided(other);
				if (SumoRobot.this.proxy != null) {
					// don't act on collisions with bodies that belong to this sumo
					if (other != body && other != rightCp && other != leftBumper) {
						rightcounter++;
					}
				}
			}
		};
		
		// for some reason we have to rotate it 
		BufferedImage bodyImgBuf = new BufferedImage((int)(BODY_LENGTH * SumoRing.SCALE_FACTOR), (int)(BODY_WIDTH * SumoRing.SCALE_FACTOR), BufferedImage.TYPE_INT_RGB);
		BufferedImage leftCpImgBuf = new BufferedImage((int)(CATERPILLAR_LENGTH * SumoRing.SCALE_FACTOR), (int)(CATERPILLAR_WIDTH * SumoRing.SCALE_FACTOR), BufferedImage.TYPE_INT_RGB);
		BufferedImage rightCpImgBuf = new BufferedImage((int)(CATERPILLAR_LENGTH * SumoRing.SCALE_FACTOR), (int)(CATERPILLAR_WIDTH * SumoRing.SCALE_FACTOR), BufferedImage.TYPE_INT_RGB);
		BufferedImage leftBumperImgBuf = new BufferedImage((int)(BUMPER_LENGTH * SumoRing.SCALE_FACTOR), (int)(BUMPER_WIDTH * SumoRing.SCALE_FACTOR), BufferedImage.TYPE_INT_RGB);
		BufferedImage rightBumperImgBuf = new BufferedImage((int)(BUMPER_LENGTH * SumoRing.SCALE_FACTOR), (int)(BUMPER_WIDTH * SumoRing.SCALE_FACTOR), BufferedImage.TYPE_INT_RGB);
		
		Graphics2D bodyImg = bodyImgBuf.createGraphics();
		Graphics2D leftCpImg = leftCpImgBuf.createGraphics();
		Graphics2D rightCpImg = rightCpImgBuf.createGraphics();
		Graphics2D leftBumperImg = leftBumperImgBuf.createGraphics();
		Graphics2D rightBumperImg = rightBumperImgBuf.createGraphics();
		
		bodyImg.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
		leftCpImg.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
		rightCpImg.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
		leftBumperImg.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
		rightBumperImg.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
		
		bodyImg.setColor(Color.GRAY);
		leftCpImg.setColor(Color.BLACK);
		rightCpImg.setColor(Color.BLACK);
		leftBumperImg.setColor(Color.RED);
		rightBumperImg.setColor(Color.GREEN);
		
		bodyImg.fillRect(0, 0, 100, 100);
		leftCpImg.fillRect(0, 0, 100, 100);
		rightCpImg.fillRect(0, 0, 100, 100);
		leftBumperImg.fillRect(0, 0, 100, 100);
		rightBumperImg.fillRect(0, 0, 100, 100);
		
		body.setUserData(new Offset(-BODY_LENGTH / 2f * SumoRing.SCALE_FACTOR, -BODY_WIDTH / 2f * SumoRing.SCALE_FACTOR, bodyImgBuf));
		leftCp.setUserData(new Offset(-CATERPILLAR_LENGTH / 2f * SumoRing.SCALE_FACTOR, -CATERPILLAR_WIDTH / 2f * SumoRing.SCALE_FACTOR, leftCpImgBuf));
		rightCp.setUserData(new Offset(-CATERPILLAR_LENGTH / 2f * SumoRing.SCALE_FACTOR, -CATERPILLAR_WIDTH / 2f * SumoRing.SCALE_FACTOR, rightCpImgBuf));
		leftBumper.setUserData(new Offset(-BUMPER_LENGTH / 2f * SumoRing.SCALE_FACTOR , -BUMPER_WIDTH / 2f * SumoRing.SCALE_FACTOR, leftBumperImgBuf));
		rightBumper.setUserData(new Offset(-BUMPER_LENGTH / 2f * SumoRing.SCALE_FACTOR , -BUMPER_WIDTH / 2f * SumoRing.SCALE_FACTOR, rightBumperImgBuf));
		
		body.setPosition(0, 0);
		body.setRotation(rot);
		
		Vector2f vec = rotate(new Vector2f(0, BODY_CP_DIST), rot);
		leftCp.setPosition(vec.getX(), vec.getY());
		leftCp.setRotation(rot);
		
		vec = rotate(new Vector2f(0, -BODY_CP_DIST), rot);
		rightCp.setPosition(vec.getX(), vec.getY());	
		rightCp.setRotation(rot);	
		
		vec = rotate(new Vector2f(BODY_BUMPER_DIST, BUMPER_OFFSET), rot);
		leftBumper.setPosition(vec.getX(), vec.getY());
		leftBumper.setRotation(rot);
		
		vec = rotate(new Vector2f(BODY_BUMPER_DIST, -BUMPER_OFFSET), rot);
		rightBumper.setPosition(vec.getX(), vec.getY());
		rightBumper.setRotation(rot);
		
		body.adjustPosition(pos);
		leftCp.adjustPosition(pos);
		rightCp.adjustPosition(pos);
		leftBumper.adjustPosition(pos);
		rightBumper.adjustPosition(pos);
		
		body.setRotDamping(1f);
		sumoRing.add(body);
		sumoRing.add(leftCp);
		sumoRing.add(rightCp);
		sumoRing.add(leftBumper);
		sumoRing.add(rightBumper);
		
		FixedJoint bodyLeftCpJoint  = new FixedJoint(body, leftCp);
		FixedJoint bodyRightCpJoint  = new FixedJoint(body, rightCp);
		FixedJoint bodyLeftBumperCpJoint = new FixedJoint(body, leftBumper);
		FixedJoint bodyRightBumperCpJoint = new FixedJoint(body, rightBumper);
		
		sumoRing.add(bodyLeftCpJoint);
		sumoRing.add(bodyRightCpJoint);
		sumoRing.add(bodyLeftBumperCpJoint);
		sumoRing.add(bodyRightBumperCpJoint);
		
		rightCp.setFriction(CATERPILLAR_FRICTION);
		leftCp.setFriction(CATERPILLAR_FRICTION);
		
		leftCp.setDamping(0.03f);
		rightCp.setDamping(0.03f);
		
		String imageFilePath = "lib/img/sumo.png";
		String imageFilePath1 = "lib/img/sumo1.png";
		bufferedImage = SumoRing.loadImage(imageFilePath);
		bufferedImage1 = SumoRing.loadImage(imageFilePath1);

	}
	private void switchState() {
		++state;
		state %= 3;
		switch (state) {
		case ATTACKING:
			timer = -1;
			leftSpeed = SumoRing.DIRECTION_FORWARD;
			rightSpeed = SumoRing.DIRECTION_FORWARD;
			break;
		case RETRIETING:
			timer = retTime;
			leftSpeed = SumoRing.DIRECTION_BACKWARD;
			rightSpeed = SumoRing.DIRECTION_BACKWARD;
			break;
		case AIMING:
			timer = aimTime;
			leftSpeed = SumoRing.DIRECTION_BACKWARD;
			rightSpeed = SumoRing.DIRECTION_FORWARD;
			
			break;
		default:
			break;
		}
	}
	public void step() {
		// TODO: this is could be more accurate 
		if (body.getPosition().length() > SumoRing.RING_RADIUS + BODY_WIDTH * 3 / 4) {
			lost = true;
		}
		if (proxy == null) { // computer behavior
			if (timer-- == 0) {
				switchState();
			}
			if (state == ATTACKING) {
				if (body.getPosition().length() > SumoRing.RING_RADIUS - 1) {
					switchState();
				}
			}
		} else { // modeled behavior
			if (body.getPosition().length() > SumoRing.RING_RADIUS - 1) {
				if (insideRing) {
					proxy.send(new SignalData(SignalData.SIGNAL_LINE_DETECTED));
					insideRing = false;
				}
			} else {
				if (!insideRing) {
					insideRing = true;
				}
			}
			if ( leftcounter > 0 ) {
			if ( 1 == leftcounter ) {
				proxy.send(new SignalData(SignalData.SIGNAL_TOUCH_LEFT));
				leftcounter++;
			} else if ( leftcounter == oldleftcounter ) {
				leftcounter = 0;
				proxy.send(new SignalData(SignalData.SIGNAL_RELEASE_LEFT));
			} }
			if ( rightcounter > 0 ) {
			if ( 1 == rightcounter ) {
				proxy.send(new SignalData(SignalData.SIGNAL_TOUCH_RIGHT));
				rightcounter++;
			} else if ( rightcounter == oldrightcounter ) {
				rightcounter = 0;
				proxy.send(new SignalData(SignalData.SIGNAL_RELEASE_RIGHT));
			} }
			oldleftcounter = leftcounter;
			oldrightcounter = rightcounter;
		}
		
		Vector2f forward = getDirection();
		forward.scale(400);
		Vector2f reverse = forward.negate();
		if (leftSpeed == SumoRing.DIRECTION_FORWARD) {
			leftCp.addForce(forward);
		} else if (leftSpeed == SumoRing.DIRECTION_BACKWARD) {
			leftCp.addForce(reverse);
		}
		if (rightSpeed == SumoRing.DIRECTION_FORWARD) {
			rightCp.addForce(forward);
		} else if (rightSpeed == SumoRing.DIRECTION_BACKWARD) {
			rightCp.addForce(reverse);
		}
	}
	
	public void turn(int direction) {
		switch (direction) {
		case SumoRing.ORIENTATION_LEFT:
			leftSpeed = SumoRing.DIRECTION_BACKWARD;
			rightSpeed = SumoRing.DIRECTION_FORWARD;
			break;
		case SumoRing.ORIENTATION_RIGHT:
			leftSpeed = SumoRing.DIRECTION_FORWARD;
			rightSpeed = SumoRing.DIRECTION_BACKWARD;
			break;
		case SumoRing.ORIENTATION_STRAIGHT:
			leftSpeed = cachedLeftSpeed;
			rightSpeed = cachedRightSpeed;
			break;
		default:
			leftSpeed = SumoRing.DIRECTION_STOP;
			rightSpeed = SumoRing.DIRECTION_STOP;
			break;
		}
	}
	
	public void go(int orientation) {
		switch (orientation) {
		case SumoRing.DIRECTION_FORWARD:
			leftSpeed = cachedLeftSpeed = SumoRing.DIRECTION_FORWARD;
			rightSpeed = cachedRightSpeed = SumoRing.DIRECTION_FORWARD;
			break;
		case SumoRing.DIRECTION_STOP:
			leftSpeed = cachedLeftSpeed  = SumoRing.DIRECTION_STOP;
			rightSpeed = cachedRightSpeed = SumoRing.DIRECTION_STOP;
			break;
		case SumoRing.DIRECTION_BACKWARD:
			leftSpeed = cachedLeftSpeed = SumoRing.DIRECTION_BACKWARD;
			rightSpeed = cachedRightSpeed = SumoRing.DIRECTION_BACKWARD;
			break;
		default:
			leftSpeed = cachedLeftSpeed  = SumoRing.DIRECTION_STOP;
			rightSpeed = cachedRightSpeed = SumoRing.DIRECTION_STOP;
			break;
		}
	}

	public  Vector2f getDirection() {
		double r = body.getRotation();
		Matrix2f mat = new Matrix2f(new Vector2f((float)Math.cos(r), (float)Math.sin(r)), new Vector2f(-(float)Math.sin(r), (float)Math.cos(r)));
		Vector2f vec = MathUtil.mul(mat, new Vector2f(1, 0));
		vec.normalise(); // TODO: necessary?
		return vec;
	}
	public static Vector2f rotate(Vector2f vec, double r) {
		Matrix2f mat = new Matrix2f(new Vector2f((float)Math.cos(r), (float)Math.sin(r)), new Vector2f(-(float)Math.sin(r), (float)Math.cos(r)));
		Vector2f res = MathUtil.mul(mat, vec);
		return res;
	}
	public void draw(Graphics2D g, boolean fullBody)
	{
		if (fullBody) {
			drawBodyPart(g, body, true);
		} else {
			drawBodyPart(g, body, false);
			drawBodyPart(g, leftCp, false);
			drawBodyPart(g, rightCp, false);
			drawBodyPart(g, leftBumper, false);
			drawBodyPart(g, rightBumper, false);
		}
	}
	private void drawBodyPart(Graphics2D g, Body b, boolean fullBody) {
		ROVector2f s1 = b.getPosition();
		float x = s1.getX() * SumoRing.SCALE_FACTOR;
		float y = s1.getY() * SumoRing.SCALE_FACTOR;
		float r = b.getRotation();
		
		// Draw (we just want to place it somewhere, so AffineTransform has this method)
		AffineTransform at = new AffineTransform();
		at.translate(x + SumoRing.SCREEN_RADIUS_PX, -y + SumoRing.SCREEN_RADIUS_PX);
		at.rotate(-r);
		if (fullBody) {
			at.translate(-26, -30);
		  	if (proxy == null) { // computer behavior
				g.drawRenderedImage(bufferedImage, at);
		  	} else {
				g.drawRenderedImage(bufferedImage1, at);
		  	}
		} else {
			Offset offset = (Offset)b.getUserData();
			at.translate(offset.x, offset.y);
			g.drawRenderedImage(offset.img, at);
		}
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public class Offset {
		public float x, y;
		public BufferedImage img;
		public Offset(float x, float y, BufferedImage img) {
			this.x = x;
			this.y = y;
			this.img = img;
		}
	}
}
