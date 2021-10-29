import serial
import sys

ser = serial.Serial('/dev/ttyUSB1', 115200,parity=serial.PARITY_NONE)  # open serial port
packet = bytearray()
x = 0
with open('src/img/car_pxl.txt') as pxl_data:
    line = pxl_data.readline()
    while line:
        line = line.replace('\n', '').split(',')
        packet.append(int(line[0]))
        packet.append(int(line[1]))
        packet.append(int(line[2]))
        x = x+3
        if(x >= 64):
            ser.write(packet)
            sys.exit()
        # packet.append(0x01)
        # packet.append(0x02)
        # packet.append(0x03)
        # packet.append(0x04)
        # packet.append(0x05)
        # packet.append(0x06)
        # packet.append(0x07)
        # packet.append(0x08)
        # packet.append(0x09)
        # packet.append(0x0a)
        print(str(line)+"\n")
        line = pxl_data.readline()

# for i in range(255):
#     print(i)
#     packet.append(i)


# packet.append(0x01)
# packet.append(0x02)
# packet.append(0x03)
# packet.append(0x04)
# packet.append(0x05)
# packet.append(0x06)
# packet.append(0x07)
# packet.append(0x08)
# packet.append(0x09)
# packet.append(0x0a)
ser.write(packet)
ser.close()
