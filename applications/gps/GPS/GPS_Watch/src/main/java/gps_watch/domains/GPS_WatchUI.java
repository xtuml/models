package gps_watch.domains;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.time.temporal.ChronoUnit;
import java.util.NoSuchElementException;

import gps_watch.domains.track.GPS_WatchTRACK;
import gps_watch.domains.track.GPS_WatchUITRACK;
import io.ciera.runtime.api.application.Application;
import io.ciera.runtime.api.domain.Domain;
import io.ciera.runtime.api.time.Timer;
import io.ciera.runtime.api.types.Duration;
import ui.UI;
import ui.types.UIIndicator;
import ui.types.UIUnit;

public class GPS_WatchUI extends UI {

    private static final int SIGNAL_NO_SET_DATA = 0;
    private static final int SIGNAL_NO_SET_TIME = 1;
    private static final int SIGNAL_NO_SET_INDICATOR = 2;

    private static final String HOSTNAME = System.getProperty("ui.hostname", "localhost");
    private static final int PORT = 2003;
    private static final Duration LISTEN_PERIOD = new Duration(250, ChronoUnit.MILLIS);

    private Socket socket;

    private OutputStream out;
    private BufferedReader in;

    private Timer listenTimer;

    private boolean connected;

    // ports
    private GPS_WatchTRACK GPS_WatchUITRACK;

    public GPS_WatchUI() {
        this("UI");
    }

    public GPS_WatchUI(String name) {
        super(name);
        GPS_WatchUITRACK = new GPS_WatchUITRACK(this);
        socket = null;
        out = null;
        in = null;
        listenTimer = null;
        connected = false;
    }

    @Override
    public void setData(double p_value, UIUnit p_unit) {
        sendMessage(String.format("%d,%f,%d\n", SIGNAL_NO_SET_DATA, p_value, p_unit.ordinal()));
    }

    @Override
    public void setIndicator(UIIndicator p_value) {
        sendMessage(String.format("%d,%d\n", SIGNAL_NO_SET_INDICATOR, p_value.ordinal()));
    }

    @Override
    public void setTime(int p_value) {
        sendMessage(String.format("%d,%d\n", SIGNAL_NO_SET_TIME, p_value));
    }

    private void sendMessage(String message) {
        try {
            out.write(message.getBytes());
            out.flush();
        } catch (IOException e) {
            getApplication().getLogger().error("Failed to send message", e);
            e.printStackTrace();
        }
    }

    private void listen() {
        try {
            String data = poll();
            switch (Integer.parseInt(data.strip().split(",")[0])) {
            case 1:
                sendStartStopPressed();
                break;
            case 2:
                sendTargetPressed();
                break;
            case 3:
                sendLapResetPressed();
                break;
            case 4:
                sendLightPressed();
                break;
            case 5:
                sendModePressed();
                break;
            default:
                break;
            }
        } catch (IOException e) {
            getApplication().getLogger().warn("Connection closed");
            tearDown();
        }
    }

    private String poll() throws IOException {
        if (connected) {
            try {
                // read and deliver data
                return in.readLine();
            } catch (IOException e) {
                if (e instanceof SocketTimeoutException) {
                    // do nothing
                } else {
                    throw e;
                }
            }
        }
        return "0";
    }

    private void connect() throws IOException {
        socket = new Socket(HOSTNAME, PORT);
        getApplication().getLogger().info("Connected to localhost on port 2003");
        in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        out = socket.getOutputStream();
        out.flush();
        socket.setSoTimeout(10); // set read timeout for 10 milliseconds
        connected = true;
    }

    private void tearDown() {
        try {
            if (listenTimer != null) {
                listenTimer.cancel();
                listenTimer = null;
            }
            if (socket != null) {
                socket.close();
                socket = null;
            }
            if (out != null) {
                out.close();
                out = null;
            }
            if (in != null) {
                in.close();
                in = null;
            }
        } catch (IOException e) {
            e.printStackTrace();
            // do nothing
        }
        connected = false;
    }

    @Override
    public void initialize() {
        super.initialize();
        try {
            connect();
            listenTimer = getContext().scheduleRecurringAction(Duration.ZERO, LISTEN_PERIOD, this::listen);
        } catch (IOException e) {
            getApplication().getLogger().error("Failed to connect to %s:%d", HOSTNAME, PORT);
            tearDown();
        }
    }

    // port accessors
    public GPS_WatchTRACK TRACK() {
        return GPS_WatchUITRACK;
    }

    @Override
    public GPS_WatchUI getDomain() {
        return (GPS_WatchUI) super.getDomain();
    }

    public static Domain provider() {
        try {
            return Application.getInstance().getDomain("GPS_WatchUI");
        } catch (NoSuchElementException e) {
            return new GPS_WatchUI();
        }
    }

}
