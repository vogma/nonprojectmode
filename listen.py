import serial
serBarCode = serial.Serial('/dev/ttyUSB1',115200)

arr = []
while True:
	data = serBarCode.read(1)
	print(data[0])
	# arr.append(data[0])
	# if len(arr)==3:
	# 	print(arr)
	# 	arr = []
