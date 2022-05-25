function analysis=analysis
    analysis.gentem=@gentem;
    analysis.rsa=@rsa;
end

function tem=gentem(n1,n2,varargin)
%n1,total number;n2,id number;
a=ones(n1);b=n1/n2;

if strcmp(varargin,'id')
    tem=a;
    for i=1:b
        tem(n2*i-b+1:n2*i,n2*i-b+1:n2*i)=0;
    end
end
if strcmp(varargin,'exp')
    tem=a;
    for i=1:n1
        for j=1:n2-1
            tem(b*j+i,i)=0;
        end
    end
    tem=tem(1:n1,1:n1);
    for i=1:n1
        for j=1:n1
            tem(i,j)=tem(j,i);
            tem(i,i)=0;
        end
    end
end
end

function value = rsa(rdm1,rdm2)
    x=rdm1(triu(true(size(rdm1)),1));
    y=rdm2(triu(true(size(rdm2)),1));
    value=corr(x,y,'type','Spearman');
end 
