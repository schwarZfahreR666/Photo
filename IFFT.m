function out=IFFT(x)
y=ifftshift(x);
y=ifft2(y);
out=uint8(y);