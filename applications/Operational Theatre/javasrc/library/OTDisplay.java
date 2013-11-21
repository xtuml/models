package library;

import interfaces.Coordinate;
import interfaces.Outcome;
import lib.Battleships;
import library.displayinterfaces.IDisplayInterfaceFromProvider;
import library.displayinterfaces.IDisplayInterfaceToProvider;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;

import com.mentor.nucleus.bp.core.ComponentInstance_c;

public class OTDisplay implements IDisplayInterfaceToProvider {

	private CellState[][] grid = new CellState[10][10];
	
	private enum CellState {
		Empty, Hit, Miss, Occupied;
	}

	private String defendingTeamName = "";
	private String attackingTeamName = "";
	
	public OTDisplay (IDisplayInterfaceFromProvider port) {
	}

	@Override
	public void setCell(ComponentInstance_c comp, int row, int column, Outcome state) {
		CellState newState = CellState.Occupied;
		if(state == Outcome.Hit) {
			newState = CellState.Hit;
		}
		else if (state == Outcome.Miss) {
			newState = CellState.Miss;
		}
		else if (state == Outcome.Vessel_Destroyed) {
			newState = CellState.Hit;
		}
		grid[column][row] = newState;
		Battleships.refreshDisplay();
	}
	
	@Override
	public void initialize(ComponentInstance_c comp) {
		for (int i=0; i < grid.length; i++) {
			for (int j=0; j < grid[0].length; j++) {
			  grid[i][j] = CellState.Empty;
			}
		}
		Battleships.connect(this);		
        Battleships.refreshDisplay();
        attackingTeamName = "";
        defendingTeamName = "";
	}

	@Override
	public void setOccupied(ComponentInstance_c comp, Coordinate c) {
	   grid[c.column][c.row] = CellState.Occupied;	
	   Battleships.refreshDisplay();
	}
	
	int smallestEdge = 0;
	int cellSize = 0;
	Point center = null;

	public void draw(GC gc, Rectangle extent, Display disp) {
		if (extent.width > extent.height) {
			smallestEdge = extent.height;
		}
		else {
			smallestEdge = extent.width;
		}
		cellSize = smallestEdge / 16;
		center =  new Point (extent.width/2, (extent.height/2) + cellSize);
		int x = center.x - (cellSize *5);
		int y = center.y - (cellSize *5);
		x -= cellSize/10;
		y -= cellSize/10;
		gc.setLineWidth(cellSize/10);
		int side = (cellSize * 10) + cellSize/5;
		gc.fillRectangle(x, y, side, side);
		gc.drawRectangle(x, y, side, side);
		int shots = 0;
		int hits = 0;
		for (int i=0; i < grid.length; i++) {
			for (int j=0; j < grid[0].length; j++) {
				drawCell(i, j, grid[i][j], gc);
				CellState state = grid[i][j];
				if (state == CellState.Hit || state == CellState.Miss) {
					shots++;
					if (state == CellState.Hit) {
						hits++;
					}
				}
			}
		}
		Font font = gc.getFont();
		Font newFont = null;
		FontData[] fd = font.getFontData();
		if (fd.length > 0) {
			fd[0].setHeight((int)cellSize/2);
			newFont = new Font(disp, fd[0]);
			gc.setFont(newFont);
		}
		String result = "--";
		if (shots > 0) {
			result = String.format("%.2f",((float)hits/(float)shots) * 100.0f) + " %";
		}
		gc.drawText("Accuracy: " + result, extent.width - (cellSize * 7), cellSize);
		gc.drawText("Attacking: " + attackingTeamName, cellSize, cellSize);
		gc.drawText("Defending: " + defendingTeamName, cellSize, cellSize * 2);
		if (newFont != null) {
			gc.setFont(font);
			newFont.dispose();
		}
	}

	private void drawCell(int i, int j, CellState cellState, GC gc) {
		int x = center.x - (cellSize * (i - 4));
		int y = center.y - (cellSize * (j - 4));
		gc.setBackground(Display.getCurrent().getSystemColor(SWT.COLOR_WHITE));
		gc.setLineWidth(cellSize/20);
		if (cellState == CellState.Hit || cellState == CellState.Occupied) {
			  Color col = gc.getBackground();
			  gc.setBackground(Display.getCurrent().getSystemColor(SWT.COLOR_GRAY));
			  gc.fillRectangle(x, y, cellSize, cellSize);
			  gc.drawRectangle(x, y, cellSize, cellSize);
			  gc.setBackground(col);
		}
		else {
		  gc.fillRectangle(x, y, cellSize, cellSize);
		  gc.drawRectangle(x, y, cellSize, cellSize);
		}
		if (cellState == CellState.Miss) {
			gc.drawLine(x, y, x + cellSize, y + cellSize);
		}
		if (cellState == CellState.Hit) {
			gc.setForeground(Display.getCurrent().getSystemColor(SWT.COLOR_RED));
			gc.drawLine(x, y, x + cellSize, y + cellSize);
			gc.drawLine(x + cellSize, y, x, y + cellSize);
			gc.setForeground(Display.getCurrent().getSystemColor(SWT.COLOR_BLACK));
		}
	}

	@Override
	public void setAttacker(ComponentInstance_c comp, String teamName) {
		attackingTeamName = teamName;
	}

	@Override
	public void setDefender(ComponentInstance_c comp, String teamName) {
		defendingTeamName = teamName;
	}

}
