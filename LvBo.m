function out=LvBo(x,y)
[a,b]=size(x);
out=x;
a_mid=floor(a/2);
b_mid=floor(b/2);
d0=10;
switch y
    case 1
    
    for i=1:1:a
        for j=1:1:b
            d=sqrt((i-a_mid)^2+(j-b_mid)^2);
            if d<=d0  
                h(i,j)=1;  
            else
                h(i,j)=0;
            end
            out(i,j)=x(i,j)*h(i,j);
        end
    end
    case 2
        for i=1:1:a
            for j=1:1:b
                d=sqrt((i-a_mid)^2+(j-b_mid)^2);
                c=-d^2/(2*(d0^2));
                h(i,j)=exp(c);
                out(i,j)=x(i,j)*h(i,j);
            end
        end
    case 3
        for i=1:1:a
            for j=1:1:b
                d=sqrt((i-a_mid)^2+(j-b_mid)^2);
                c=1+(d/d0)^4;
                h(i,j)=1/c;
                out(i,j)=x(i,j)*h(i,j);
            end
        end
        
end