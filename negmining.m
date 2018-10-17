I= rgb2gray(imread(sprintf('C:/Users/Sasank/Downloads/Masters/PR&ML/Testing_Images/Testing_Images/Non_face_2.jpg'), 'jpg'));
results=load('fullresultsadaboost.txt');

f=load('nf2scale_6.0features.mat');
features=f.nf2scale_features12;
outputs_12=zeros(size(features,2),1);
H=size(imresize(I,1/6.0),1);
index=1;
lengths=zeros(10);
myind=1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_12(i,1)=output;
     if output > 0.0
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_12(index,:) = [c,r,16,16];
        finaloutputs_12(index,1)=i;
        finaloutputs_12(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end
clear f;

rects_11=[];
f=load('nf2scale_5.5features.mat');
features=f.nf2scale_features11;
outputs_11=zeros(size(features,2),1);
H=size(imresize(I,1/5.5),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_11(i,1)=output;
     if output > 0.0
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_11(index,:) = [c,r,16,16];
        finaloutputs_11(index,1)=i;
        finaloutputs_11(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;

f=load('nf2scale_5.0features.mat');
features=f.nf2scale_features10;
outputs_10=zeros(size(features,2),1);
H=size(imresize(I,1/5.0),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_10(i,1)=output;
     if output > 0.0
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_10(index,:) = [c,r,16,16];
        finaloutputs_10(index,1)=i;
        finaloutputs_10(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;

f=load('nf2scale_4.5features.mat');
features=f.nf2scale_features9;
outputs_9=zeros(size(features,2),1);
H=size(imresize(I,1/4.5),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_9(i,1)=output;
     if output > 0.0
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_9(index,:) = [c,r,16,16];
        finaloutputs_9(index,1)=i;
        finaloutputs_9(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end
clear f;

f=load('nf2scale_4.0features.mat');
features=f.nf2scale_features8;
outputs_8=zeros(size(features,2),1);
H=size(imresize(I,1/4.0),1);
index=1;
myind=myind+1;

for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_8(i,1)=output;
    if output > 0.0
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_8(index,:) = [c,r,16,16];
        finaloutputs_8(index,1)=i;
        finaloutputs_8(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;

f=load('nf2scale_3.5features.mat');
features=f.nf2scale_features7;
outputs_7=zeros(size(features,2),1);
H=size(imresize(I,1/3.5),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_7(i,1)=output;
     if output > 0.0
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_7(index,:) = [c,r,16,16];
        finaloutputs_7(index,1)=i;
        finaloutputs_7(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;

f=load('nf2scale_3.0features.mat');
features=f.nf2scale_features6;
outputs_6=zeros(size(features,2),1);
H=size(imresize(I,1/3.0),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_6(i,1)=output;
     if output > 0.0
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_6(index,:) = [c,r,16,16];
        finaloutputs_6(index,1)=i;
        finaloutputs_6(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;

f=load('nf2scale_2.5features.mat');
features=f.nf2scale_features5;
outputs_5=zeros(size(features,2),1);
H=size(imresize(I,1/2.5),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_5(i,1)=output;
    if output > 0.0
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_5(index,:) = [c,r,16,16];
        finaloutputs_5(index,1)=i;
        finaloutputs_5(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;

f=load('nf2scale_2.0features.mat');
features=f.nf2scale_features4;
outputs_4=zeros(size(features,2),1);
H=size(imresize(I,1/2.0),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_4(i,1)=output;
    if output > 0.0
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_4(index,:) = [c,r,16,16];
        finaloutputs_4(index,1)=i;
        finaloutputs_4(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;

f=load('nf2scale_1.5features.mat');
features=f.nf2scale_features3;
outputs_3=zeros(size(features,2),1);
H=size(imresize(I,1/1.5),1);
index=1;
myind=myind+1;
for i=1:size(features,2)
    output=0;
    for j=1:size(features,1)
        if(features(j,i) > results(j,4))
            val=1*results(j,5);
        else
            val=-1*results(j,5);
        end
        output=output+(val*results(j,3));
    end
    outputs_3(i,1)=output;
    if output > 0.0
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_3(index,:) = [c,r,16,16];
        finaloutputs_3(index,1)=i;
        finaloutputs_3(index,2)=output;
        index=index+1;
        lengths(myind)=lengths(myind)+1;
     end
end

clear f;




looprects=zeros(100000,4);

index=1;

if(lengths(1)~=0)
for i=1:size(rects_12,1)
    loopscales(index,1)=6.0;
    looprects(index,:)=6.0*rects_12(i,:);
    loopouts(index,:)=finaloutputs_12(i,2);
    index=index+1;
end
end

if(lengths(2)~=0)
for i=1:size(rects_11,1)
    loopscales(index,1)=5.5;
    looprects(index,:)=5.5*rects_11(i,:);
    loopouts(index,:)=finaloutputs_11(i,2);
    index=index+1;
end
end

if(lengths(3)~=0)
for i=1:size(rects_10,1)
    loopscales(index,1)=5.0;
    looprects(index,:)=5.0*rects_10(i,:);
    loopouts(index,:)=finaloutputs_10(i,2);
    index=index+1;
end
end

if(lengths(4)~=0)
for i=1:size(rects_9,1)
    loopscales(index,1)=4.5;
    looprects(index,:)=4.5*rects_9(i,:);
    loopouts(index,:)=finaloutputs_9(i,2);
    index=index+1;
end
end

if(lengths(5)~=0)
for i=1:size(rects_8,1)
    loopscales(index,1)=4.0;
    looprects(index,:)=4.0*rects_8(i,:);
    loopouts(index,:)=finaloutputs_8(i,2);
    index=index+1;
end
end
    
   if(lengths(6)~=0)
for i=1:size(rects_7,1)
    loopscales(index,1)=3.5;
    looprects(index,:)=3.5*rects_7(i,:);
    loopouts(index,:)=finaloutputs_7(i,2);
    index=index+1;
end
   end
   
   if(lengths(7)~=0)
for i=1:size(rects_6,1)
    loopscales(index,1)=3.0;
    looprects(index,:)=3.0*rects_6(i,:);
    loopouts(index,:)=finaloutputs_6(i,2);
    index=index+1;
end
   end
   
   if(lengths(8)~=0)
for i=1:size(rects_5,1)
    loopscales(index,1)=2.5;
    looprects(index,:)=2.5*rects_5(i,:);
    loopouts(index,:)=finaloutputs_5(i,2);
    index=index+1;
end
   end
   
   if(lengths(9)~=0)
for i=1:size(rects_4,1)
    loopscales(index,1)=2.0;
    looprects(index,:)=2.0*rects_4(i,:);
    loopouts(index,:)=finaloutputs_4(i,2);
    index=index+1;
end
   end
   
   if(lengths(10)~=0)
for i=1:size(rects_3,1)
    loopscales(index,1)=1.5;
    looprects(index,:)=1.5*rects_3(i,:);
    loopouts(index,:)=finaloutputs_3(i,2);
    index=index+1;
end
   end
   
   

figure;

imshow(I,[]);
hold on;
for i=1:index-1
    rectangle('Position',looprects(i,:),'EdgeColor','r');
    hold on;
end

allimg=zeros(index-1,16,16);
for i=1:index-1
    c=looprects(i,1)/loopscales(i,1);
    r=looprects(i,2)/loopscales(i,1);
    S=imresize(I,1/loopscales(i,1));
    p=double(imcrop(S,[c,r,15,15]));
    allimg(i,:,:)=reshape(p,1,size(p,1),size(p,2));
end



features_1=negfeaturesdetect(allimg);
save('nf2features.mat','features_1');





