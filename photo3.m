function photo3(x)
I=imread(x,'jpg');
a=I;
subplot(2,4,1)

imshow(a)
title('Original');
Ifft=FFT(I);
subplot(2,4,5)

imshow(Ifft)
Il=LvBo(Ifft,1);
subplot(2,4,6)

imshow(Il)
Ili=IFFT(Il);
subplot(2,4,2)

imshow(Ili)
title('low-pass');

Ig=LvBo(Ifft,2);
subplot(2,4,7)

imshow(Ig)
Igi=IFFT(Ig);
subplot(2,4,3)

imshow(Igi)
title('Gauss');

Ib=LvBo(Ifft,3);
subplot(2,4,8)

imshow(Ib)
Ibi=IFFT(Il);
subplot(2,4,4)

imshow(Ibi)
title('Butterworth');



