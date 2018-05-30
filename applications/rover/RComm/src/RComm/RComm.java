package rcomm;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import org.xtuml.bp.core.ComponentInstance_c;
import org.xtuml.bp.core.CorePlugin;

import rcomm.shared.ILocationDataFromProvider;
import rcomm.shared.ILocationDataToProvider;
import rcomm.shared.IRCommFromProvider;
import rcomm.shared.IRCommToProvider;

public class RComm implements IRCommToProvider, ILocationDataFromProvider {
    
    IRCommFromProvider rcomm_from_provider;
    ILocationDataToProvider location_data_to_provider;

    private static SocketCommunicator rover = new SocketCommunicator();
    private static SocketCommunicator ref = new SocketCommunicator();

    public static final String IP = "127.0.0.1";
    public static final String CONFIG_FILE = "git/models/applications/rover/Settings/config.txt";

    public RComm( IRCommFromProvider rcomm_from_provider, ILocationDataToProvider location_data_to_provider ) {
        this.rcomm_from_provider = rcomm_from_provider;
        this.location_data_to_provider = location_data_to_provider;
        setup();
    }

    @Override
    public void setForwardPower( ComponentInstance_c senderReceiver, int power ) {
        rover.noReply( "Rover,setForwardPower(" + new Integer( power ).toString() + ")" );
    }

    @Override
    public void incrementPower( ComponentInstance_c senderReceiver, int power ) {
    }

    @Override
    public void setLRPower( ComponentInstance_c senderReceiver, int lpower, int rpower ) {
    }

    @Override
    public void brake( ComponentInstance_c senderReceiver, int power ) {
    }

    @Override
    public void pollLeaderX( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollLeaderZ( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverX( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverY( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverZ( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverCompass( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void pollRoverDistance( ComponentInstance_c senderReceiver ) {
    }

    @Override
    public void ready( ComponentInstance_c senderReceiver ) {
        ref.noReply( "ready" );
    }

    public void setup() {
        int refPort = 0;
        int roverPort = 0;
        try{
            //------ Load config
            java.util.List<String> conf = readFile( System.getenv( "HOME" ) + "/" + CONFIG_FILE );
            Iterator<String> conIt = conf.iterator();
            while (conIt.hasNext()) {
                String a = conIt.next();
                if (a.contains("=") == true) {
                    String b = a.substring(0, a.indexOf('='));
                    if (b.equals("controlPort"))
                        roverPort = Integer.parseInt(a.substring(a.indexOf('=')+1));
                    if (b.equals("observationPort"))
                        refPort = Integer.parseInt(a.substring(a.indexOf('=')+1));
                }
            }
            rover.connectToServer(IP,roverPort);
            ref.connectToServer(IP,refPort);
        }
        catch (Exception e){}
    }

    // file read
    public static java.util.List<String> readFile(String fileName) {
        File file = new File(fileName);
        // this gives you a 2-dimensional array of strings
        java.util.List<String> data = new ArrayList<>();
        Scanner inputStream;
        try {
            inputStream = new Scanner(file);

            while (inputStream.hasNext()) {
                data.add(inputStream.next());
            }
            inputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace( CorePlugin.out );
        }
        return data;
    }

    static class SocketCommunicator {

        private BufferedReader in;
        private PrintWriter out = null;
        private Socket socket = null;

        public SocketCommunicator() {
        }

        public void connectToServer(String IP, int port) throws IOException {
            // Make connection and initialize streams
            socket = new Socket(IP, port);
            in = new BufferedReader(
            new InputStreamReader(socket.getInputStream()));
            out = new PrintWriter(socket.getOutputStream(), true);
            CorePlugin.out.println("connected");
        }

        // Send command for sending a message through the socket and returning the reply
        public String send(String message) {
            String reply = null;
            if (out == null){
              CorePlugin.out.println("fail - socket error");
            }
            out.println(message);
            try {
                reply = in.readLine();
            }
            catch(java.io.IOException e){ e.printStackTrace( CorePlugin.out );}
            return reply;
        }
        // expecting no reply.
        public void noReply(String message){
          out.println(message);
        }

        // Closes the connection on the socket
        public void close(){
            try {
                socket.close();
            }
            catch(java.io.IOException e){ e.printStackTrace( CorePlugin.out );}
        }
    }

}
