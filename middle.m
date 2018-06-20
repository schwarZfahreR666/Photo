function out=middle(x,y)
[a,b]=size(x);
out=zeros(a,b);
% mid=zeros(9,1);
out=x;
for i=(y+1)/2:1:a-(y-1)/2
    for j=(y+1)/2:1:b-(y-1)/2
        mid=x(i-(y-1)/2:i+(y-1)/2,j-(y-1)/2:j+(y-1)/2);
        mid=mid(:);
        
        mid=sort(mid);
       
        out(i,j)=mid((y*y+1)/2,1);
    end
end