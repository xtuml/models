import serial
import time
import urllib

serial_channel = None
log_file = None

def handle_log_message( s ):
  line = urllib.unquote(s).decode('utf8')
  log_file.write(line)
  log_file.flush()

def handle_data( s ):
  for line in s.splitlines():
    handle_log_message(line)

if __name__ == '__main__':
  serial_channel = serial.Serial('/dev/cu.MindstormsEV3-SerialPor')
  log_file = open('sumo.log','w')
  try:
    print 'Serial port listening'
    while True:
      n = serial_channel.in_waiting
      if n <> 0:
        s = serial_channel.read(n)
        handle_data(s)
      else:
        # No data is ready to be processed
        time.sleep(0.5)
  except KeyboardInterrupt:
    pass
  serial_channel.close()
  log_file.close()
