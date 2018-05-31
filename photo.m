function photo(x)
I=imread(x,'jpg');
imshow(I)
figure();
a=tra(I);
b=zhifang(a);
imshow(b)