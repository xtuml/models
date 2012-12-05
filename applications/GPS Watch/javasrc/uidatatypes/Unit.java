//========================================================================
//
//(c) Copyright 2007-2012 by Mentor Graphics Corp. All rights reserved.
//
//========================================================================
 
package uidatatypes;

import java.util.HashMap;
import java.util.Map;


public enum Unit {
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
    private static Map<Integer, Unit> map = new HashMap<Integer, Unit>();

    static {
        for (Unit unitEnum : Unit.values()) {
            map.put(unitEnum.value, unitEnum);
        }
    }

    private Unit(final String name, final int value) {
        this.name = name;
        this.value = value;
    }

    public String toString() {
        return name;
    }
    
    public int getValue() {
        return value;
    }
    
    public static Unit valueOf(int value) {
        return map.get(value);
    }
}