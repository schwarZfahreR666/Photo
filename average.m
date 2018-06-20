function out=average(x,y)
[a,b]=size(x);
out=zeros(a,b);
out=x;
for i=(y+1)/2:1:a-(y-1)/2
    for j=(y+1)/2:1:b-(y-1)/2
        ert=x(i-(y-1)/2:i+(y-1)/2,j-(y-1)/2:j+(y-1)/2);
        srt=ert(:);
        suM=sum(srt);
        out(i,j)=suM/9;
       
    end
end


