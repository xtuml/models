package tracking.classes;

import io.ciera.runtime.api.application.ExecutionContext;
import io.ciera.runtime.api.domain.EmptyInstance;
import io.ciera.runtime.api.domain.ObjectInstance;
import io.ciera.runtime.api.exceptions.ActionException;
import io.ciera.runtime.api.exceptions.DeletedInstanceException;
import io.ciera.runtime.api.exceptions.EmptyInstanceException;
import io.ciera.runtime.api.exceptions.InvalidRelationshipException;
import io.ciera.runtime.api.exceptions.ReferentialAttributeException;
import io.ciera.runtime.api.types.TimeStamp;
import io.ciera.runtime.api.types.UniqueId;
import io.ciera.runtime.domain.AbstractObjectInstance;
import io.ciera.runtime.domain.AttributeParameter;
import io.ciera.runtime.domain.InstanceIdentifier;
import io.ciera.runtime.domain.LocalVariable;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import tracking.Tracking;


public class TrackLog extends AbstractObjectInstance implements ObjectInstance {

    private static final long serialVersionUID = 1298114014L;

    public static final TrackLog EMPTY = new EmptyTrackLog();

    // event ID declarations
    
    // attributes
    private TimeStamp ref_session_startTime;


    // relationships
    private TrackPoint R1_has_first_TrackPoint_inst = TrackPoint.EMPTY;
    private TrackPoint R3_has_last_TrackPoint_inst = TrackPoint.EMPTY;
    private WorkoutSession R4_represents_path_for_WorkoutSession_inst = WorkoutSession.EMPTY;
    private Set<LapMarker> R5_has_laps_defined_by_LapMarker_set = new LinkedHashSet<>();


    // constructors
    public TrackLog() {
    }

    public TrackLog(Tracking domain) {
        super(UniqueId.random(), domain);
        this.ref_session_startTime = TimeStamp.ZERO;
    }

    public TrackLog(UniqueId instanceId, Tracking domain, TimeStamp ref_session_startTime) {
        super(instanceId, domain);
        this.ref_session_startTime = ref_session_startTime;
    }

    // attribute accessors
    public TimeStamp getSession_startTime() {
        if (isActive()) {
            return ref_session_startTime;
        } else {
            throw new DeletedInstanceException("Cannot get attribute 'ref_session_startTime' of deleted instance", getDomain(), this);
        }
    }

    public void setSession_startTime(TimeStamp ref_session_startTime) {
        if (isActive()) {
            if (!ref_session_startTime.equals(this.ref_session_startTime)) {
                if (R4_represents_path_for_WorkoutSession().notEmpty() && !R4_represents_path_for_WorkoutSession().getStartTime().equals(ref_session_startTime)) {
                    throw new ReferentialAttributeException("Inconsistent combined referential attribute values: ref_session_startTime", getDomain(), this);
                }
                this.ref_session_startTime = ref_session_startTime;
                if (R1_has_first_TrackPoint().notEmpty()) {
                    R1_has_first_TrackPoint().setSession_startTime(ref_session_startTime);
                }
                R5_has_laps_defined_by_LapMarker().forEach(o -> o.setSession_startTime(ref_session_startTime));
                if (R3_has_last_TrackPoint().notEmpty()) {
                    R3_has_last_TrackPoint().setSession_startTime(ref_session_startTime);
                }
            }
        } else {
            throw new DeletedInstanceException("Cannot set attribute 'ref_session_startTime' of deleted instance", getDomain(), this);
        }
    }



    // operations
    public void addLapMarker() {
        getApplication().getLogger().trace("SMT: Enter action: Tracking::TrackLog.addLapMarker");
        int _lineNumber = -1;
        try {
            /* lapMarker: instance of LapMarker; */
            _lineNumber = 3;
            LapMarker lapMarker;
            /* timer: instance of WorkoutTimer; */
            _lineNumber = 2;
            WorkoutTimer timer;
            /* timer := this->R4.represents_path_for.WorkoutSession->R8.is_timed_by.WorkoutTimer; */
            _lineNumber = 5;
            timer = self().R4_represents_path_for_WorkoutSession().R8_is_timed_by_WorkoutTimer();
            /* lapMarker := create LapMarker( session_startTime => this.session_startTime, lapTime => timer.time ); */
            _lineNumber = 6;
            lapMarker = getDomain().createInstance(LapMarker.class, inst -> {
                inst.setLapTime(timer.getTime());
                inst.setSession_startTime(self().getSession_startTime());
            });
            /* link this R5.has_laps_defined_by lapMarker; */
            _lineNumber = 7;
            getDomain().relate_R5_LapMarker_marks_end_of_lap_in_TrackLog(lapMarker, self());
            /* this.updateDisplay(); */
            _lineNumber = 10;
            self().updateDisplay();
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Tracking::TrackLog", "addLapMarker", "TrackLog_addLapMarker.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Tracking::TrackLog.addLapMarker");
        }
    }

    public void addTrackPoint() {
        getApplication().getLogger().trace("SMT: Enter action: Tracking::TrackLog.addTrackPoint");
        int _lineNumber = -1;
        try {
            /* distance: real; */
            _lineNumber = 9;
            final LocalVariable<Double> distance = new LocalVariable<>();
            /* firstPoint: instance of TrackPoint; */
            _lineNumber = 4;
            TrackPoint firstPoint;
            /* isFirstTrackPoint: boolean; */
            _lineNumber = 6;
            boolean isFirstTrackPoint;
            /* lastLatitude: real; */
            _lineNumber = 7;
            double lastLatitude;
            /* lastLongitude: real; */
            _lineNumber = 8;
            double lastLongitude;
            /* lastPoint: instance of TrackPoint; */
            _lineNumber = 5;
            TrackPoint lastPoint;
            /* session: instance of WorkoutSession; */
            _lineNumber = 10;
            WorkoutSession session;
            /* trackPoint: instance of TrackPoint; */
            _lineNumber = 3;
            TrackPoint trackPoint;
            /* workoutTimer: instance of WorkoutTimer; */
            _lineNumber = 2;
            WorkoutTimer workoutTimer;
            /* workoutTimer := this->R4.represents_path_for.WorkoutSession->R8.is_timed_by.WorkoutTimer; */
            _lineNumber = 16;
            workoutTimer = self().R4_represents_path_for_WorkoutSession().R8_is_timed_by_WorkoutTimer();
            /* trackPoint := create TrackPoint( session_startTime => this.session_startTime, time => workoutTimer.time ); */
            _lineNumber = 17;
            trackPoint = getDomain().createInstance(TrackPoint.class, inst -> {
                inst.setSession_startTime(self().getSession_startTime());
                inst.setTime(workoutTimer.getTime());
            });
            /* LOC~>getLocation( trackPoint.latitude, trackPoint.longitude ); */
            _lineNumber = 18;
            getDomain().LOC().getLocation(new AttributeParameter<>(trackPoint, TrackPoint::getLatitude, TrackPoint::setLatitude), new AttributeParameter<>(trackPoint, TrackPoint::getLongitude, TrackPoint::setLongitude));
            /* firstPoint := this->R1.TrackPoint; */
            _lineNumber = 21;
            firstPoint = self().R1_has_first_TrackPoint();
            /* lastPoint := this->R3.TrackPoint; */
            _lineNumber = 22;
            lastPoint = self().R3_has_last_TrackPoint();
            /* isFirstTrackPoint := false; */
            _lineNumber = 25;
            isFirstTrackPoint = false;
            /* lastLatitude := 0.0; */
            _lineNumber = 26;
            lastLatitude = 0.0;
            /* lastLongitude := 0.0; */
            _lineNumber = 27;
            lastLongitude = 0.0;
            /* if (null = firstPoint) then */
            _lineNumber = 28;
            if (firstPoint.isEmpty()) {
                /* isFirstTrackPoint := true; */
                _lineNumber = 29;
                isFirstTrackPoint = true;
                /* link this R1.has_first trackPoint; */
                _lineNumber = 30;
                getDomain().relate_R1_TrackPoint_is_start_of_TrackLog(trackPoint, self());
                /* link this R3.has_last trackPoint; */
                _lineNumber = 31;
                getDomain().relate_R3_TrackPoint_is_last_for_TrackLog(trackPoint, self());
            } else {
                /* lastLatitude := lastPoint.latitude; */
                _lineNumber = 34;
                lastLatitude = lastPoint.getLatitude();
                /* lastLongitude := lastPoint.longitude; */
                _lineNumber = 35;
                lastLongitude = lastPoint.getLongitude();
                /* unlink this R3.has_last lastPoint; */
                _lineNumber = 36;
                getDomain().unrelate_R3_TrackPoint_is_last_for_TrackLog(lastPoint, self());
                /* link this R3.has_last trackPoint; */
                _lineNumber = 37;
                getDomain().relate_R3_TrackPoint_is_last_for_TrackLog(trackPoint, self());
                /* link lastPoint R2.follows trackPoint; */
                _lineNumber = 38;
                getDomain().relate_R2_TrackPoint_preceeds_TrackPoint(trackPoint, lastPoint);
            }
            /* distance := 0.0; */
            _lineNumber = 42;
            distance.set(0.0);
            /* if (not isFirstTrackPoint) then */
            _lineNumber = 43;
            if (!isFirstTrackPoint) {
                /* LOC~>getDistance( distance, lastLatitude, lastLongitude, trackPoint.latitude, trackPoint.longitude ); */
                _lineNumber = 44;
                getDomain().LOC().getDistance(distance, lastLatitude, lastLongitude, trackPoint.getLatitude(), trackPoint.getLongitude());
            }
            /* session := this->R4.represents_path_for.WorkoutSession; */
            _lineNumber = 47;
            session = self().R4_represents_path_for_WorkoutSession();
            /* session.accumulatedDistance := session.accumulatedDistance + distance; */
            _lineNumber = 48;
            session.setAccumulatedDistance(session.getAccumulatedDistance() + distance.get());
            /* this.updateDisplay(); */
            _lineNumber = 51;
            self().updateDisplay();
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Tracking::TrackLog", "addTrackPoint", "TrackLog_addTrackPoint.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Tracking::TrackLog.addTrackPoint");
        }
    }

    public void clearLapMarkers() {
        getApplication().getLogger().trace("SMT: Enter action: Tracking::TrackLog.clearLapMarkers");
        int _lineNumber = -1;
        try {
            /* lapMarkers: set of instance of LapMarker; */
            _lineNumber = 2;
            Set<LapMarker> lapMarkers;
            /* lapMarkers := this->R5.LapMarker; */
            _lineNumber = 4;
            lapMarkers = self().R5_has_laps_defined_by_LapMarker().collect(Collectors.toSet());
            /* for lapMarker in lapMarkers loop */
            _lineNumber = 5;
            for (final LapMarker lapMarker : lapMarkers) {
                /* unlink this R5 lapMarker; */
                _lineNumber = 6;
                getDomain().unrelate_R5_LapMarker_marks_end_of_lap_in_TrackLog(lapMarker, self());
                /* delete lapMarker; */
                _lineNumber = 7;
                lapMarker.delete();
            }
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Tracking::TrackLog", "clearLapMarkers", "TrackLog_clearLapMarkers.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Tracking::TrackLog.clearLapMarkers");
        }
    }

    public void clearTrackPoints() {
        getApplication().getLogger().trace("SMT: Enter action: Tracking::TrackLog.clearTrackPoints");
        int _lineNumber = -1;
        try {
            /* lastPoint: instance of TrackPoint; */
            _lineNumber = 3;
            TrackPoint lastPoint;
            /* nextPoint: instance of TrackPoint; */
            _lineNumber = 2;
            TrackPoint nextPoint;
            /* prevPoint: instance of TrackPoint; */
            _lineNumber = 4;
            TrackPoint prevPoint;
            /* nextPoint := this->R1.TrackPoint; */
            _lineNumber = 6;
            nextPoint = self().R1_has_first_TrackPoint();
            /* lastPoint := this->R3.TrackPoint; */
            _lineNumber = 7;
            lastPoint = self().R3_has_last_TrackPoint();
            /* if (null /= lastPoint) then */
            _lineNumber = 9;
            if (!lastPoint.isEmpty()) {
                /* unlink this R3 lastPoint; */
                _lineNumber = 10;
                getDomain().unrelate_R3_TrackPoint_is_last_for_TrackLog(lastPoint, self());
            }
            /* if (null /= nextPoint) then */
            _lineNumber = 13;
            if (!nextPoint.isEmpty()) {
                /* unlink this R1 nextPoint; */
                _lineNumber = 14;
                getDomain().unrelate_R1_TrackPoint_is_start_of_TrackLog(nextPoint, self());
            }
            /* while (null /= nextPoint) loop */
            _lineNumber = 17;
            while (!nextPoint.isEmpty()) {
                /* prevPoint := nextPoint; */
                _lineNumber = 18;
                prevPoint = nextPoint;
                /* nextPoint := nextPoint->R2.follows.TrackPoint; */
                _lineNumber = 19;
                nextPoint = nextPoint.R2_follows_TrackPoint();
                /* if ( null /= nextPoint ) then */
                _lineNumber = 20;
                if (!nextPoint.isEmpty()) {
                    /* unlink prevPoint R2.follows nextPoint; */
                    _lineNumber = 21;
                    getDomain().unrelate_R2_TrackPoint_preceeds_TrackPoint(nextPoint, prevPoint);
                }
                /* delete prevPoint; */
                _lineNumber = 23;
                prevPoint.delete();
            }
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Tracking::TrackLog", "clearTrackPoints", "TrackLog_clearTrackPoints.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Tracking::TrackLog.clearTrackPoints");
        }
    }

    public void updateDisplay() {
        getApplication().getLogger().trace("SMT: Enter action: Tracking::TrackLog.updateDisplay");
        int _lineNumber = -1;
        try {
            /* display: instance of Display; */
            _lineNumber = 2;
            Display display;
            /* display := this->R4.represents_path_for.WorkoutSession->R7.current_status_indicated_on.Display; */
            _lineNumber = 5;
            display = self().R4_represents_path_for_WorkoutSession().R7_current_status_indicated_on_Display();
            /* generate Display.refresh() to display; */
            _lineNumber = 6;
            generateEvent(Display.Refresh.class, display);
        } catch (RuntimeException _e) {
            if (!(_e instanceof ActionException)) {
                _e = new ActionException(_e);
            }
            ((ActionException) _e).updateStack("Tracking::TrackLog", "updateDisplay", "TrackLog_updateDisplay.svc", _lineNumber);
            throw _e;
        } finally {
            getApplication().getLogger().trace("SMT: Exit action: Tracking::TrackLog.updateDisplay");
        }
    }



    // events
    

    // selections
    public void setR1_has_first_TrackPoint(TrackPoint inst) {
        if (isActive()) {
            if (R1_has_first_TrackPoint_inst.isEmpty()) {
                R1_has_first_TrackPoint_inst = inst;
            } else {
                throw new InvalidRelationshipException("Relationship R1 already exists for instance", getDomain(), this, inst, R1_has_first_TrackPoint_inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot create relationship on deleted instance", getDomain(), this);
        }
    }

    public void clearR1_has_first_TrackPoint(TrackPoint inst) {
        if (isActive()) {
            if (R1_has_first_TrackPoint_inst.equals(inst)) {
                R1_has_first_TrackPoint_inst = TrackPoint.EMPTY;
            } else {
                throw new InvalidRelationshipException("Relationship R1 does not exist between instances", getDomain(), this, inst, R1_has_first_TrackPoint_inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot delete relationship on deleted instance", getDomain(), this);
        }
    }

    public TrackPoint R1_has_first_TrackPoint() {
        if (isActive()) {
            return R1_has_first_TrackPoint_inst;
        } else {
            throw new DeletedInstanceException("Cannot navigate relationship 'R1_has_first_TrackPoint' of deleted instance", getDomain(), this);
        }
    }

    public void setR3_has_last_TrackPoint(TrackPoint inst) {
        if (isActive()) {
            if (R3_has_last_TrackPoint_inst.isEmpty()) {
                R3_has_last_TrackPoint_inst = inst;
            } else {
                throw new InvalidRelationshipException("Relationship R3 already exists for instance", getDomain(), this, inst, R3_has_last_TrackPoint_inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot create relationship on deleted instance", getDomain(), this);
        }
    }

    public void clearR3_has_last_TrackPoint(TrackPoint inst) {
        if (isActive()) {
            if (R3_has_last_TrackPoint_inst.equals(inst)) {
                R3_has_last_TrackPoint_inst = TrackPoint.EMPTY;
            } else {
                throw new InvalidRelationshipException("Relationship R3 does not exist between instances", getDomain(), this, inst, R3_has_last_TrackPoint_inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot delete relationship on deleted instance", getDomain(), this);
        }
    }

    public TrackPoint R3_has_last_TrackPoint() {
        if (isActive()) {
            return R3_has_last_TrackPoint_inst;
        } else {
            throw new DeletedInstanceException("Cannot navigate relationship 'R3_has_last_TrackPoint' of deleted instance", getDomain(), this);
        }
    }

    public void setR4_represents_path_for_WorkoutSession(WorkoutSession inst) {
        if (isActive()) {
            if (R4_represents_path_for_WorkoutSession_inst.isEmpty()) {
                R4_represents_path_for_WorkoutSession_inst = inst;
            } else {
                throw new InvalidRelationshipException("Relationship R4 already exists for instance", getDomain(), this, inst, R4_represents_path_for_WorkoutSession_inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot create relationship on deleted instance", getDomain(), this);
        }
    }

    public void clearR4_represents_path_for_WorkoutSession(WorkoutSession inst) {
        if (isActive()) {
            if (R4_represents_path_for_WorkoutSession_inst.equals(inst)) {
                R4_represents_path_for_WorkoutSession_inst = WorkoutSession.EMPTY;
            } else {
                throw new InvalidRelationshipException("Relationship R4 does not exist between instances", getDomain(), this, inst, R4_represents_path_for_WorkoutSession_inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot delete relationship on deleted instance", getDomain(), this);
        }
    }

    public WorkoutSession R4_represents_path_for_WorkoutSession() {
        if (isActive()) {
            return R4_represents_path_for_WorkoutSession_inst;
        } else {
            throw new DeletedInstanceException("Cannot navigate relationship 'R4_represents_path_for_WorkoutSession' of deleted instance", getDomain(), this);
        }
    }

    public void addR5_has_laps_defined_by_LapMarker(LapMarker inst) {
        if (isActive()) {
            if (!R5_has_laps_defined_by_LapMarker_set.add(inst)) {
                throw new InvalidRelationshipException("Relationship R5 already exists for instance", getDomain(), this, inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot create relationship on deleted instance", getDomain(), this);
        }
    }

    public void removeR5_has_laps_defined_by_LapMarker(LapMarker inst) {
        if (isActive()) {
            if (!R5_has_laps_defined_by_LapMarker_set.remove(inst)) {
                throw new InvalidRelationshipException("Relationship R5 does not exist between instances", getDomain(), this, inst);
            }
        } else {
            throw new DeletedInstanceException("Cannot delete relationship on deleted instance", getDomain(), this);
        }
    }

    public Stream<LapMarker> R5_has_laps_defined_by_LapMarker() {
        if (isActive()) {
            return R5_has_laps_defined_by_LapMarker_set.stream();
        } else {
            throw new DeletedInstanceException("Cannot navigate relationship 'R5_has_laps_defined_by_LapMarker' of deleted instance", getDomain(), this);
        }
    }



    @Override
    public void delete() {
        if (R1_has_first_TrackPoint_inst.notEmpty()) {
            throw new InvalidRelationshipException("Cannot delete instance with existing active relationships: R1_has_first_TrackPoint", getDomain(), this);
        }
        if (R3_has_last_TrackPoint_inst.notEmpty()) {
            throw new InvalidRelationshipException("Cannot delete instance with existing active relationships: R3_has_last_TrackPoint", getDomain(), this);
        }
        if (R4_represents_path_for_WorkoutSession_inst.notEmpty()) {
            throw new InvalidRelationshipException("Cannot delete instance with existing active relationships: R4_represents_path_for_WorkoutSession", getDomain(), this);
        }
        if (!R5_has_laps_defined_by_LapMarker_set.isEmpty()) {
            throw new InvalidRelationshipException("Cannot delete instance with existing active relationships: R5_has_laps_defined_by_LapMarker", getDomain(), this);
        }
        super.delete();
    }

    @Override
    public Object getIdentifier() {
        return new InstanceIdentifier(getSession_startTime());
    }

    @Override
    public Tracking getDomain() {
        return (Tracking) super.getDomain();
    }

    @Override
    public TrackLog self() {
        return this;
    }

    @Override
    public String toString() {
        if (isActive()) {
            return super.toString() + " (" + ")";
        } else {
            return super.toString();
        }
    }

    // subtype interfaces
    

    // empty class
    private static final class EmptyTrackLog extends TrackLog implements EmptyInstance {

        private static final long serialVersionUID = 1298114014L;

        // attributes
        @Override
        public TimeStamp getSession_startTime() {
            throw new EmptyInstanceException("Cannot get attribute 'ref_session_startTime' of empty instance", null, this);
        }
        @Override
        public void setSession_startTime(TimeStamp ref_session_startTime) {
            throw new EmptyInstanceException("Cannot set attribute 'ref_session_startTime' of empty instance", null, this);
        }


        // operations
        @Override
        public void addLapMarker() {
            throw new EmptyInstanceException("Cannot invoke operation 'addLapMarker' on empty instance", null, this);
        }
        @Override
        public void addTrackPoint() {
            throw new EmptyInstanceException("Cannot invoke operation 'addTrackPoint' on empty instance", null, this);
        }
        @Override
        public void clearLapMarkers() {
            throw new EmptyInstanceException("Cannot invoke operation 'clearLapMarkers' on empty instance", null, this);
        }
        @Override
        public void clearTrackPoints() {
            throw new EmptyInstanceException("Cannot invoke operation 'clearTrackPoints' on empty instance", null, this);
        }
        @Override
        public void updateDisplay() {
            throw new EmptyInstanceException("Cannot invoke operation 'updateDisplay' on empty instance", null, this);
        }


        // selections
        @Override
        public void setR1_has_first_TrackPoint(TrackPoint inst) {
            throw new EmptyInstanceException("Cannot create relationship on empty instance", getDomain(), this);
        }

        @Override
        public void clearR1_has_first_TrackPoint(TrackPoint inst) {
            throw new EmptyInstanceException("Cannot delete relationship on empty instance", getDomain(), this);
        }

        @Override
        public TrackPoint R1_has_first_TrackPoint() {
            return TrackPoint.EMPTY;
        }

        @Override
        public void setR3_has_last_TrackPoint(TrackPoint inst) {
            throw new EmptyInstanceException("Cannot create relationship on empty instance", getDomain(), this);
        }

        @Override
        public void clearR3_has_last_TrackPoint(TrackPoint inst) {
            throw new EmptyInstanceException("Cannot delete relationship on empty instance", getDomain(), this);
        }

        @Override
        public TrackPoint R3_has_last_TrackPoint() {
            return TrackPoint.EMPTY;
        }

        @Override
        public void setR4_represents_path_for_WorkoutSession(WorkoutSession inst) {
            throw new EmptyInstanceException("Cannot create relationship on empty instance", getDomain(), this);
        }

        @Override
        public void clearR4_represents_path_for_WorkoutSession(WorkoutSession inst) {
            throw new EmptyInstanceException("Cannot delete relationship on empty instance", getDomain(), this);
        }

        @Override
        public WorkoutSession R4_represents_path_for_WorkoutSession() {
            return WorkoutSession.EMPTY;
        }

        @Override
        public void addR5_has_laps_defined_by_LapMarker(LapMarker inst) {
            throw new EmptyInstanceException("Cannot create relationship on empty instance", getDomain(), this);
        }

        @Override
        public void removeR5_has_laps_defined_by_LapMarker(LapMarker inst) {
            throw new EmptyInstanceException("Cannot delete relationship on empty instance", getDomain(), this);
        }

        @Override
        public Stream<LapMarker> R5_has_laps_defined_by_LapMarker() {
            return Stream.of();
        }



        @Override
        public UniqueId getInstanceId() {
            throw new EmptyInstanceException("Cannot get instance ID of empty instance", null, this);
        }

        @Override
        public Tracking getDomain() {
            throw new EmptyInstanceException("Cannot get domain of empty instance", null, this);
        }

        @Override
        public ExecutionContext getContext() {
            throw new EmptyInstanceException("Cannot get execution context of empty instance", null, this);
        }

        @Override
        public String toString() {
            return "EMPTY_TRACKLOG";
        }

    }

}
