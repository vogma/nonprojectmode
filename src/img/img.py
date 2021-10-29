from PIL import Image
img = Image.open('car.jpg')
file = open("car_pxl.txt", "w")
colorarr = []
for i in range(640):
    for ii in range(451):
        colors = img.getpixel((i,ii))
        bin0 = '{0:08b}'.format(colors[0])
        bin1 = '{0:08b}'.format(colors[1])
        bin2 = '{0:08b}'.format(colors[2])

        bin_str0 = str(bin0)[0:4]
        bin_str1 = str(bin1)[0:4]
        bin_str2 = str(bin2)[0:4]

        #print(bin_str+" "+str(int(bin_str,2)))        
        #print(str(bin)+" "+str(colors[1])+" "+ bin_str+"\n")
        line =str(int(bin_str0,2))+","+str(int(bin_str1,2))+","+str(int(bin_str2,2))+"\n"
        print(line)
        file.write(line)
file.close()

