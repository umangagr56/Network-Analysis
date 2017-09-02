A=[1 0 0 1 0 1 1;0 1 0 -1 1 -1 0; 0 0 1 0 -1 0 -1;-1 -1 -1 0 0 0 0];
z=[1:size(A,2);A];
b=[];
t=randi(size(A,1));
for i=1:size(A,1)-1 
    while 1
        c=randi(size(z,2));
        while z(t+1,c)==0
            c=randi(size(z,2));
        end
        l=1;
       while z(t+1,c)+z(l+1,c)~=0
            l=l+1;
            if l==5
                break;
            end    
       end 
       if l~=5
           break;
       end
    end 
    z(t+1,:)=zeros(1,size(z,2));
    b=[b z(1,c)];
    z(:,c)=[];
    t=l;
        %A(:,c)=[];
            
end
b

    
        
