package location;

import io.ciera.runtime.api.application.Application;
import io.ciera.runtime.api.domain.Domain;
import io.ciera.runtime.api.domain.PersistentDomain;
import io.ciera.runtime.api.domain.Variable;
import io.ciera.runtime.api.exceptions.ActionException;
import io.ciera.runtime.domain.AbstractPersistentDomain;

import java.util.NoSuchElementException;

import location.classes.Distance;
import location.classes.GPS;
import location.classes.GPSStateMachine;
import location.classes.simulatedGPS;

import org.xtuml.masl.util.Math;


public class Location extends AbstractPersistentDomain implements PersistentDomain {

    public Math Math;

    public Location() {
        this("Location");
    }

    public Location(String name) {
        super(name);
        Math = new Math(this);
        
    }

    // domain functions
    public void unregisterListener() {
        getApplication().getLogger().trace("SMT: Enter action: Location.unregisterListener");
        int _lineNumber = -1;
        try {
            /* gps: instance of GPS; */
            _lineNumber = 2;
            GPS gps;
            /* gps := find_one GPS(); */
            _lineNumber = 4;
            gps = getDomain().getAllInstances(GPS.class).findAny().orElse(GPS.EMPTY);
            /* generate GPS.unregisterListener() to gps; */
            _lineNumber = 5;
            generateEvent(GPS.UnregisterListener.class, gps);
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location", "unregisterListener", "unregisterListener.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location.unregisterListener");
        }
    }

    public double sqrt(final double p_x) {
        getApplication().getLogger().trace("SMT: Enter action: Location.sqrt");
        int _lineNumber = -1;
        try {
            /* return Math::sqrt(x); */
            _lineNumber = 3;
            return Math.sqrt(p_x);
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location", "sqrt", "sqrt.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location.sqrt");
        }
    }

    public void registerListener() {
        getApplication().getLogger().trace("SMT: Enter action: Location.registerListener");
        int _lineNumber = -1;
        try {
            /* gps: instance of GPS; */
            _lineNumber = 2;
            GPS gps;
            /* GPS.initialize(); */
            _lineNumber = 4;
            getDomain()._GPS_initialize();
            /* gps := find_one GPS(); */
            _lineNumber = 5;
            gps = getDomain().getAllInstances(GPS.class).findAny().orElse(GPS.EMPTY);
            /* generate GPS.registerListener() to gps; */
            _lineNumber = 6;
            generateEvent(GPS.RegisterListener.class, gps);
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location", "registerListener", "registerListener.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location.registerListener");
        }
    }

    public void getLocation(final Variable<Double> p_latitude,  final Variable<Double> p_longitude) {
        getApplication().getLogger().trace("SMT: Enter action: Location.getLocation");
        int _lineNumber = -1;
        try {
            /* gps: instance of GPS; */
            _lineNumber = 2;
            GPS gps;
            /* GPS.initialize(); */
            _lineNumber = 6;
            getDomain()._GPS_initialize();
            /* gps := find_one GPS(); */
            _lineNumber = 7;
            gps = getDomain().getAllInstances(GPS.class).findAny().orElse(GPS.EMPTY);
            /* latitude := gps.currentLatitude; */
            _lineNumber = 8;
            p_latitude.set(gps.getCurrentLatitude());
            /* longitude := gps.currentLongitude; */
            _lineNumber = 9;
            p_longitude.set(gps.getCurrentLongitude());
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location", "getLocation", "getLocation.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location.getLocation");
        }
    }

    public void getDistance(final Variable<Double> p_result,  final double p_fromLat,  final double p_fromLong,  final double p_toLat,  final double p_toLong) {
        getApplication().getLogger().trace("SMT: Enter action: Location.getDistance");
        int _lineNumber = -1;
        try {
            /* deltaLat: real; */
            _lineNumber = 3;
            double deltaLat;
            /* deltaLong: real; */
            _lineNumber = 4;
            double deltaLong;
            /* distance: instance of Distance; */
            _lineNumber = 2;
            Distance distance;
            /* sqrtSum: real; */
            _lineNumber = 6;
            double sqrtSum;
            /* sumSquares: real; */
            _lineNumber = 5;
            double sumSquares;
            /* Distance.initialize(); */
            _lineNumber = 11;
            getDomain()._Distance_initialize();
            /* distance := find_one Distance(); */
            _lineNumber = 12;
            distance = getDomain().getAllInstances(Distance.class).findAny().orElse(Distance.EMPTY);
            /* deltaLat := toLat - fromLat; */
            _lineNumber = 13;
            deltaLat = p_toLat - p_fromLat;
            /* deltaLong := toLong - fromLong; */
            _lineNumber = 14;
            deltaLong = p_toLong - p_fromLong;
            /* sumSquares := (deltaLat * deltaLat) + (deltaLong * deltaLong); */
            _lineNumber = 15;
            sumSquares = deltaLat * deltaLat + deltaLong * deltaLong;
            /* sqrtSum := sqrt( sumSquares ); */
            _lineNumber = 16;
            sqrtSum = getDomain().sqrt(sumSquares);
            /* result := (sqrtSum * distance.kmPerDegree * 1000 ); */
            _lineNumber = 17;
            p_result.set(sqrtSum * distance.getKmPerDegree() * 1000);
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location", "getDistance", "getDistance.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location.getDistance");
        }
    }



    // static class operations
    public void _Distance_initialize() {
        getApplication().getLogger().trace("SMT: Enter action: Location::Distance.initialize");
        int _lineNumber = -1;
        try {
            /* distance: instance of Distance; */
            _lineNumber = 2;
            Distance distance;
            /* distance := find_one Distance(); */
            _lineNumber = 4;
            distance = getDomain().getAllInstances(Distance.class).findAny().orElse(Distance.EMPTY);
            /* if ( null = distance ) then */
            _lineNumber = 5;
            if (distance.isEmpty()) {
                /* distance := create Distance( id => 1 ); */
                _lineNumber = 6;
                distance = getDomain().createInstance(Distance.class, inst -> {
                    inst.setId(1);
                });
                /* distance.kmPerDegree := 111.32; */
                _lineNumber = 7;
                distance.setKmPerDegree(111.32);
            }
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location::Distance", "initialize", "Distance_initialize.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location::Distance.initialize");
        }
    }

    public void _GPS_initialize() {
        getApplication().getLogger().trace("SMT: Enter action: Location::GPS.initialize");
        int _lineNumber = -1;
        try {
            /* gps: instance of GPS; */
            _lineNumber = 2;
            GPS gps;
            /* simgps: instance of simulatedGPS; */
            _lineNumber = 3;
            simulatedGPS simgps;
            /* gps := find_one GPS(); */
            _lineNumber = 7;
            gps = getDomain().getAllInstances(GPS.class).findAny().orElse(GPS.EMPTY);
            /* if ( null = gps ) then */
            _lineNumber = 8;
            if (gps.isEmpty()) {
                /* gps := create GPS( id => 1, Current_State => idle ); */
                _lineNumber = 10;
                gps = getDomain().createInstance(GPS.class, inst -> {
                    inst.setCurrentState(GPSStateMachine.States.IDLE);
                    inst.setId(1);
                });
                /* gps.motionSegments := 0; */
                _lineNumber = 11;
                gps.setMotionSegments(0);
                /* simulatedGPS.initialize(); */
                _lineNumber = 13;
                getDomain()._simulatedGPS_initialize();
                /* simgps := find_one simulatedGPS(); */
                _lineNumber = 14;
                simgps = getDomain().getAllInstances(simulatedGPS.class).findAny().orElse(simulatedGPS.EMPTY);
                /* gps.currentLatitude  := simgps.initialLatitude; */
                _lineNumber = 15;
                gps.setCurrentLatitude(simgps.getInitialLatitude());
                /* gps.currentLongitude := simgps.initialLongitude; */
                _lineNumber = 16;
                gps.setCurrentLongitude(simgps.getInitialLongitude());
            }
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location::GPS", "initialize", "GPS_initialize.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location::GPS.initialize");
        }
    }

    public void _simulatedGPS_initialize() {
        getApplication().getLogger().trace("SMT: Enter action: Location::simulatedGPS.initialize");
        int _lineNumber = -1;
        try {
            /* simgps: instance of simulatedGPS; */
            _lineNumber = 2;
            simulatedGPS simgps;
            /* simgps := find_one simulatedGPS(); */
            _lineNumber = 4;
            simgps = getDomain().getAllInstances(simulatedGPS.class).findAny().orElse(simulatedGPS.EMPTY);
            /* if ( null = simgps ) then */
            _lineNumber = 5;
            if (simgps.isEmpty()) {
                /* simgps := create simulatedGPS( id => 1 ); */
                _lineNumber = 6;
                simgps = getDomain().createInstance(simulatedGPS.class, inst -> {
                    inst.setId(1);
                });
                /* simgps.initialLatitude := 32.432237; */
                _lineNumber = 7;
                simgps.setInitialLatitude(32.432237);
                /* simgps.initialLongitude := -110.812283; */
                _lineNumber = 8;
                simgps.setInitialLongitude(-110.812283);
                /* simgps.latitudeIncrement := 0.00001; */
                _lineNumber = 9;
                simgps.setLatitudeIncrement(0.00001);
                /* simgps.longitudeIncrement := 0.00002; */
                _lineNumber = 10;
                simgps.setLongitudeIncrement(0.00002);
                /* simgps.updatePeriod := 1000000; */
                _lineNumber = 11;
                simgps.setUpdatePeriod(1000000);
            }
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Location::simulatedGPS", "initialize", "simulatedGPS_initialize.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Location::simulatedGPS.initialize");
        }
    }



    @Override
    public Location getDomain() {
        return (Location) super.getDomain();
    }

    public static Domain provider() {
        try {
            return Application.getInstance().getDomain("Location");
        } catch (NoSuchElementException e) {
            return new Location();
        }
    }


}
