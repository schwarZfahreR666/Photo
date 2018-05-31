function out=zhifang(x)
num=zeros(256,1);
col=zeros(256,1);
[a,b]=size(x);
out=zeros(a,b);
out=x;
for i=1:1:a
    for j=1:1:b
        num(x(i,j)+1,1)=num(x(i,j)+1,1)+1;
    end
end
for i=1:1:256
    col(i,1)=num(i,1)/(a*b);
end
for i=2:1:256
    col(i,1)=col(i,1)+col(i-1,1);
end
for i=1:1:256
    col(i,1)=floor(double((256-1)*col(i,1)-0.5));
end
for i=1:1:256
    for m=1:1:a
        for n=1:1:b
            if x(m,n)==i-1
                out(m,n)=col(i,1);
            end
                
        end
    end
end