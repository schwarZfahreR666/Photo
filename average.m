function out=average(x)
[a,b]=size(x);
out=zeros(a,b);
out=x;
for i=2:1:a-1
    for j=2:1:b-1
        out(i,j)=(x(i,j)+x(i-1,j)+x(i,j-1)+x(i-1,j-1)+x(i+1,j)+x(i,j+1)+x(i+1,j+1)+x(i-1,j+1)+x(i+1,j-1))/9;
        
    end
end