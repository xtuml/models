import serial
import time
import socket

leader_sock = None
rover_sock = None
serial_channel = None

def handle_message( msg ):
  msg = msg.strip()
  print 'Received message: ', msg
  if msg.startswith('Rover,brake') or msg.startswith('Rover,incrementPower') or msg.startswith('Rover,setForwardPower') or msg.startswith('Rover,setLRPower'):
    rover_sock.sendall(msg+'\n')
    serial_channel.write('NULL\n'.encode('utf-8'))
  elif msg.startswith('Leader,Distance') or msg.startswith('Leader,GPS') or msg.startswith('ready'):
    leader_sock.sendall(msg+'\n')
    reply = leader_sock.recv(256).strip()
    serial_channel.write(reply+'\n'.encode('utf-8'))
  elif msg.startswith('Rover,getCompass') or msg.startswith('Rover,GPS'):
    rover_sock.sendall(msg+'\n')
    reply = rover_sock.recv(256).strip()
    serial_channel.write(reply+'\n'.encode('utf-8'))
  else:
    serial_channel.write('NULL\n'.encode('utf-8'))

def create_connection( port ):
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect(('127.0.0.1', port))
  return s

if __name__ == '__main__':
  leader_sock = create_connection(9999)
  rover_sock = create_connection(9998)
  serial_channel = serial.Serial('/dev/cu.MindstormsEV3-SerialPor')
  try:
    print 'Serial port listening'
    while True:
      n = serial_channel.in_waiting
      if n <> 0:
        s = serial_channel.read(n)
        handle_message(s)
      else:
        # No data is ready to be processed
        time.sleep(0.5)
  except KeyboardInterrupt:
    pass
  leader_sock.close()
  rover_sock.close()
  serial_channel.close()
