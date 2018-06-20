function photo2(x)
I=imread(x,'jpg');
a=I;
subplot(2,2,1)

imshow(a)
title('Original');
b=average(I,3);
subplot(2,2,2)

imshow(b)
title('average 3X3');
d=average(I,5);
subplot(2,2,3)

imshow(d)
title('average 5X5');

c=middle(a,9);
subplot(2,2,4)

imshow(c)
title('middle 9X9');
