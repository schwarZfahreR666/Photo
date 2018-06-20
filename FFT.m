function out=FFT(x)
y=fft2(double(x));
out=fftshift(y);