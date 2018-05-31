function y=tra(x)
[a,b,c]=size(x);
for i=1:1:a
    for j=1:1:b
        y(i,j)=x(i,j,1)*0.299+x(i,j,2)*0.587+x(i,j,3)*0.114;
    end
end