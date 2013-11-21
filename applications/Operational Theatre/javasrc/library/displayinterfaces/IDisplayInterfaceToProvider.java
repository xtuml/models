package library.displayinterfaces;

import interfaces.Coordinate;
import interfaces.Outcome;

import com.mentor.nucleus.bp.core.ComponentInstance_c;

public interface IDisplayInterfaceToProvider {
   public void setCell(ComponentInstance_c comp, int row, int column, Outcome state);
   
   public void initialize(ComponentInstance_c comp);
   
   public void setOccupied(ComponentInstance_c comp, Coordinate c);
   
   public void setDefender(ComponentInstance_c comp, String teamName);
   
   public void setAttacker(ComponentInstance_c comp, String teamName);
}
