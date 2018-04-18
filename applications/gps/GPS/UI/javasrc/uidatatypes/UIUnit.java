//========================================================================
//
//(c) Copyright 2007-2012 by Mentor Graphics Corp. All rights reserved.
//
//========================================================================
 
package uidatatypes;

import java.util.HashMap;
import java.util.Map;


public enum UIUnit {
    km("km", 0),
    meters("meters", 1),
    minPerKm("min/km", 2),
    kmPerHour("km/h", 3),
    miles("miles", 4),
    yards("yds", 5),
    feet("ft", 6),
    minPerMile("min/mile", 7),
    mph("mph", 8),
    bpm("bpm", 9),
    laps("laps", 10);
    
    private final int value;
    private final String name;
    private static Map<Integer, UIUnit> map = new HashMap<Integer, UIUnit>();

    static {
        for (UIUnit unitEnum : UIUnit.values()) {
            map.put(unitEnum.value, unitEnum);
        }
    }

    private UIUnit(final String name, final int value) {
        this.name = name;
        this.value = value;
    }

    public String toString() {
        return name;
    }
    
    public int getValue() {
        return value;
    }
    
    public static UIUnit valueOf(int value) {
        return map.get(value);
    }
}
