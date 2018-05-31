from PIL import Image
from scipy.misc import imread
import scipy
import math
import numpy as np
from decimal import *
img=imread('/Users/zr/Desktop/hw.jpg')
out=imread('/Users/zr/Desktop/hw.jpg')
im=Image.open('/Users/zr/Desktop/hw.jpg')
im.show()
width,height=im.size
def tra(x):                      #转换成灰度
    a = np.zeros((height,width))
    for i in range(1,height):
        for j in range(1,width):
            a[i,j]=x[i,j,0]*0.299+x[i,j,1]*0.587+x[i,j,2]*0.114
    return a
def zhifang(x):                  #直方图优化
    num=[0 for x in range(0,256)]
    col=[0 for x in range(0,256)]
    for i in range(0,height-1):
        for j in range(0,width-1):
            c=int(x[i,j])
            num[c]=num[c]+1

    for i in range(0,256):
        col[i]=Decimal(num[i])/Decimal((height*width))

    for i in range(1,256):
        col[i]=col[i]+col[i-1]


    for i in range(0,256):
        col[i]=math.floor(Decimal((256-1))*Decimal(col[i]))

    for i in range(0,256):
        for m in range(0,height):
            for n in range(0,width):
                if x[m,n]==i:
                    out[m,n]=col[i]
    return out
def average(x):                   #3X3均值滤波
    out=x
    for i in range(1,height-2):
        for j in range(1,width-2):
            out[i,j]=int((x[i,j]+x[i-1,j]+x[i,j-1]+x[i-1,j-1]+x[i+1,j]+x[i,j+1]+x[i+1,j+1]+x[i-1,j+1]+x[i+1,j-1])/9)
            
    return out
    

x1=img
x2=average(x1)
scipy.misc.imsave('hwc.jpg', x2)
aimg=Image.open('/Users/zr/Desktop/hwc.jpg')
aimg.show()
    
    
        
        
            
