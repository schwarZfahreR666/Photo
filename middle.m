function out=middle(x)
[a,b]=size(x);
out=zeros(a,b);
mid=zeros(9,1);
out=x;
for i=2:1:a-1
    for j=2:1:b-1
        mid(1,1)=x(i,j);
        mid(2,1)=x(i-1,j);
        mid(3,1)=x(i,j-1);
        mid(4,1)=x(i-1,j-1);
        mid(5,1)=x(i,j+1);
        mid(6,1)=x(i+1,j);
        mid(7,1)=x(i+1,j+1);
        mid(8,1)=x(i+1,j-1);
        mid(9,1)=x(i-1,j+1);
        for m=1:1:8
           if mid(m,1)>mid(m+1,1)
               c=mid(m,1);
               mid(m,1)=mid(m+1,1);
               mid(m+1,1)=c;
           end
           
        end
        out(i,j)=mid(5,1);
    end
end