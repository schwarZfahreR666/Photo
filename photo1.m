function photo1(x)
I=imread(x,'jpg');
a=tra(I);
subplot(2,2,1)
imshow(a)
title('Original')
subplot(2,2,2)
imhist(a)


b=zhifang(a);
subplot(2,2,3)
imshow(b)
subplot(2,2,4)
imhist(b)