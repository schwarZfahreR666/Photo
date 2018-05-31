function out=sumiao(x)
[a,b]=size(x);
N=zeros(a,b);  
g=zeros(a,b);
out=zeros(a,b);
for i=1:1:a
    for j=1:1:b
        if x(i,j)<10
            x(i,j)=0;
        end
        if x(i,j)>10
            x(i,j)=255/245*x(i,j)-10*255/245;
        end
        y(i,j)=x(i,j);
        
            
    end
end
for m=1:1:a
    for n=1:1:b
      N(m,n)=255-y(m,n);  
    end
end

for i=2:a-1  
    for j=2:b-1  
        sum=0;  
        sum=1*double(N(i-1,j-1))+2*double(N(i-1,j))+1*double(N(i-1,j+1));  
        sum=sum+2*double(N(i,j-1))+4*double(N(i,j))+2*double(N(i,j+1));  
        sum=sum+1*double(N(i+1,j-1))+2*double(N(i+1,j))+1*double(N(i+1,j+1));  
        sum=sum/16;  
        g(i,j)=sum;  
    end  
end  
  
for i=1:a  
    for j=1:b  
        c=double(g(i,j));  
        d=double(x(i,j));  
        temp=d+d*c/(256-c);  
        out(i,j)=uint8(min(temp,255));  
          
    end  
end  
out=out./255; 