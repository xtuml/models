package lib;

import java.io.InputStream;

import library.OTDisplay;

import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class Battleships {
	
	private static OTDisplay otDisplay = null;
	private static Shell shell = null;
	private ImageData imgData = null;
	private Image img = null;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// This main is purely for testing purposes
		otDisplay = new OTDisplay(null);
		Display display = new Display();
		shell = new Shell(display);
		shell.setText("xtUML Battleships!");
		shell.addPaintListener(new PaintListener() {
			public void paintControl(PaintEvent event) {
				Rectangle rect = shell.getClientArea();
				if (otDisplay != null) {
					otDisplay.draw(event.gc, rect, shell.getDisplay());
				}
				else {
					String message = "Waiting for connection.";
					Point size = event.gc.textExtent(message);
					event.gc.drawText(message, (rect.width/2) - size.x/2, (rect.height/2) - size.y/2);
				}
			}
		});
		Rectangle clientArea = shell.getClientArea();
		shell.setBounds(clientArea.x + 10, clientArea.y + 10, 200, 200);
		shell.open();
		while (!shell.isDisposed()) {
			if (!display.readAndDispatch()) {
				display.sleep();
			}
		}
		display.dispose();
	}
	
	
	private class DialogThread implements Runnable {
		@Override
		public void run() {
			Display display = new Display();
			shell = new Shell(display);
			shell.setText("xtUML Battleships!");
			if (imgData == null) {
			  InputStream imgStr = getClass().getResourceAsStream("battleships.jpg");
			  imgData = new ImageData(imgStr);
			}
			shell.addPaintListener(new PaintListener() {
				public void paintControl(PaintEvent event) {
					Rectangle rect = shell.getClientArea();
					if (img != null) {
					  Rectangle imageExt = img.getBounds();
					  event.gc.drawImage(img, 0, 0, imageExt.width, imageExt.height, 0, 0, rect.width, rect.height);
					}
					Image oldImg = img;
					img = new Image(shell.getDisplay(), rect);
					GC drawSurface = new GC(img);
					Image backgrd = new Image(shell.getDisplay(), imgData.scaledTo(rect.width, rect.height));
					drawSurface.drawImage(backgrd, 0, 0, rect.width, rect.height, 0, 0, rect.width, rect.height);
					if (otDisplay != null) {
						otDisplay.draw(drawSurface, rect, shell.getDisplay());
					}
					else {
						String message = "Waiting for connection.";
						Point size = drawSurface.textExtent(message);
						drawSurface.drawText(message, (rect.width/2) - size.x/2, (rect.height/2) - size.y/2);
					}
					event.gc.drawImage(img, 0, 0, rect.width, rect.height, 0, 0, rect.width, rect.height);
					drawSurface.dispose();
					backgrd.dispose();
					if (oldImg != null) {
					  oldImg.dispose();
					}
				}
			});
			Rectangle clientArea = shell.getClientArea();
			shell.setBounds(clientArea.x + 10, clientArea.y + 10, 200, 200);
			shell.open();
			while (!shell.isDisposed() && otDisplay != null) {
				if (!display.readAndDispatch()) {
					display.sleep();
				}
			}
			display.dispose();
		}
	}

	public static void connect(OTDisplay display) {
		System.out.println("Connected.");
		if (otDisplay == null) {
			otDisplay = display;
			Thread dialogRunner = new Thread(new Battleships().new DialogThread(), "Battleships display");
			dialogRunner.start();
		}
	}
	
	public static void disconnect() {
		otDisplay = null;
	}
	
	public static void refreshDisplay() {
		if (shell != null) {
	      shell.getDisplay().asyncExec(new Runnable() {
		    @Override
		    public void run() {
			  shell.redraw();
		    }
	      });
		}
	}
}
