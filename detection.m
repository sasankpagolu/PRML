I= rgb2gray(imread(sprintf('C:/Users/Sasank/Downloads/Masters/PR&ML/Testing_Images/Testing_Images/Face_3.jpg'), 'jpg'));
results=load('HardResults.txt');

f=load('hf3scale_6.0features.mat');
features=f.hf3scale_features12;
outputs_12=zeros(size(features,2),1);
H=size(imresize(I,1/6.0),1);
index=1;
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
     if output > 1.1
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_12(index,:) = [c,r,16,16];
        finaloutputs_12(index,1)=i;
        finaloutputs_12(index,2)=output;
        index=index+1;
     end
end
save('final_outputs12.mat','finaloutputs_12');
save('rects_12.mat','rects_12');
clear f;

f=load('hf3scale_5.5features.mat');
features=f.hf3scale_features11;
outputs_11=zeros(size(features,2),1);
H=size(imresize(I,1/5.5),1);
index=1;
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
     if output > 1.1
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_11(index,:) = [c,r,16,16];
        finaloutputs_11(index,1)=i;
        finaloutputs_11(index,2)=output;
        index=index+1;
     end
end
save('final_outputs11.mat','finaloutputs_11');
save('rects_11.mat','rects_11');
clear f;

f=load('hf3scale_5.0features.mat');
features=f.hf3scale_features10;
outputs_10=zeros(size(features,2),1);
H=size(imresize(I,1/5.0),1);
index=1;
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
     if output > 1.1
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_10(index,:) = [c,r,16,16];
        finaloutputs_10(index,1)=i;
        finaloutputs_10(index,2)=output;
        index=index+1;
     end
end
save('final_outputs10.mat','finaloutputs_10');
save('rects_10.mat','rects_10');
clear f;

f=load('hf3scale_4.5features.mat');
features=f.hf3scale_features9;
outputs_9=zeros(size(features,2),1);
H=size(imresize(I,1/4.5),1);
index=1;
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
     if output > 1.1
    mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_9(index,:) = [c,r,16,16];
        finaloutputs_9(index,1)=i;
        finaloutputs_9(index,2)=output;
        index=index+1;
     end
end
save('final_outputs9.mat','finaloutputs_9');
save('rects_9.mat','rects_9');
clear f;

f=load('hf3scale_4.0features.mat');
features=f.hf3scale_features8;
outputs_8=zeros(size(features,2),1);
H=size(imresize(I,1/4.0),1);
index=1;
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
    if output > 1.1
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_8(index,:) = [c,r,16,16];
        finaloutputs_8(index,1)=i;
        finaloutputs_8(index,2)=output;
        index=index+1;
     end
end
save('final_outputs8.mat','finaloutputs_8');
save('rects_8.mat','rects_8');
clear f;

f=load('hf3scale_3.5features.mat');
features=f.hf3scale_features7;
outputs_7=zeros(size(features,2),1);
H=size(imresize(I,1/3.5),1);
index=1;
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
     if output > 1.1
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_7(index,:) = [c,r,16,16];
        finaloutputs_7(index,1)=i;
        finaloutputs_7(index,2)=output;
        index=index+1;
     end
end
save('final_outputs7.mat','finaloutputs_7');
save('rects_7.mat','rects_7');
clear f;

f=load('hf3scale_3.0features.mat');
features=f.hf3scale_features6;
outputs_6=zeros(size(features,2),1);
H=size(imresize(I,1/3.0),1);
index=1;
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
     if output > 1.1
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_6(index,:) = [c,r,16,16];
        finaloutputs_6(index,1)=i;
        finaloutputs_6(index,2)=output;
        index=index+1;
     end
end
save('final_outputs6.mat','finaloutputs_6');
save('rects_6.mat','rects_6');
clear f;

f=load('hf3scale_2.5features.mat');
features=f.hf3scale_features5;
outputs_5=zeros(size(features,2),1);
H=size(imresize(I,1/2.5),1);
index=1;
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
    if output > 1.1
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_5(index,:) = [c,r,16,16];
        finaloutputs_5(index,1)=i;
        finaloutputs_5(index,2)=output;
        index=index+1;
     end
end
save('final_outputs5.mat','finaloutputs_5');
save('rects_5.mat','rects_5');
clear f;

f=load('hf3scale_2.0features.mat');
features=f.hf3scale_features4;
outputs_4=zeros(size(features,2),1);
H=size(imresize(I,1/2.0),1);
index=1;
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
    if output > 1.1
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_4(index,:) = [c,r,16,16];
        finaloutputs_4(index,1)=i;
        finaloutputs_4(index,2)=output;
        index=index+1;
     end
end
save('final_outputs4.mat','finaloutputs_4');
save('rects_4.mat','rects_4');
clear f;

f=load('hf3scale_1.5features.mat');
features=f.hf3scale_features3;
outputs_3=zeros(size(features,2),1);
H=size(imresize(I,1/1.5),1);
index=1;

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
    if output > 1.1
     mm = H; m=16;
        k = i;
        c = floor((k-1)/(mm-m+1)) + 1;
        r = k - (c-1)*(mm-m+1);
        rects_3(index,:) = [c,r,16,16];
        finaloutputs_3(index,1)=i;
        finaloutputs_3(index,2)=output;
        index=index+1;
     end
end
save('final_outputs3.mat','finaloutputs_3');
save('rects_3.mat','rects_3');
clear f;




looprects=zeros(100000,4);

index=1;


for i=1:size(rects_12,1)
   
    looprects(index,:)=6.0*rects_12(i,:);
    loopouts(index,:)=finaloutputs_12(i,2);
    index=index+1;
end

for i=1:size(rects_11,1)
    looprects(index,:)=5.5*rects_11(i,:);
    loopouts(index,:)=finaloutputs_11(i,2);
    index=index+1;
end

for i=1:size(rects_10,1)
    looprects(index,:)=5.0*rects_10(i,:);
    loopouts(index,:)=finaloutputs_10(i,2);
    index=index+1;
end

for i=1:size(rects_9,1)
    looprects(index,:)=4.5*rects_9(i,:);
    loopouts(index,:)=finaloutputs_9(i,2);
    index=index+1;
end

for i=1:size(rects_8,1)
    looprects(index,:)=4.0*rects_8(i,:);
    loopouts(index,:)=finaloutputs_8(i,2);
    index=index+1;
end

for i=1:size(rects_7,1)
    looprects(index,:)=3.5*rects_7(i,:);
    loopouts(index,:)=finaloutputs_7(i,2);
    index=index+1;
end

for i=1:size(rects_6,1)
    looprects(index,:)=3.0*rects_6(i,:);
    loopouts(index,:)=finaloutputs_6(i,2);
    index=index+1;
end

for i=1:size(rects_5,1)
    looprects(index,:)=2.5*rects_5(i,:);
    loopouts(index,:)=finaloutputs_5(i,2);
    index=index+1;
end

for i=1:size(rects_4,1)
    looprects(index,:)=2.0*rects_4(i,:);
    loopouts(index,:)=finaloutputs_4(i,2);
    index=index+1;
end

for i=1:size(rects_3,1)
    looprects(index,:)=1.5*rects_3(i,:);
    loopouts(index,:)=finaloutputs_3(i,2);
    index=index+1;
end

for i=1:size(loopouts,1)
    maxrect=looprects(i,:);
    maxvalue=loopouts(i,:);
    for j=1:size(loopouts,1)
        if(rectint(looprects(i,:),looprects(j,:))>0)
            if(loopouts(i,:)>loopouts(j,:))
                value=loopouts(i,:);
                valrect=looprects(i,:);
            else
                value=loopouts(j,:);
                valrect=looprects(j,:);
            end
            if(value>=maxvalue)
                if(value==maxvalue)
                    if(i>j)
                maxvalue=value;
                maxrect=valrect;
                    end
                
            else
                 maxvalue=value;
                maxrect=valrect;
                end
            end
        end
    end
    finalrects(i,:)=maxrect;
    finalouts(i,:)=maxvalue;
end

for i=1:size(finalouts,1)
    maxrect=finalrects(i,:);
    maxvalue=finalouts(i,:);
    for j=1:size(loopouts,1)
        if(rectint(finalrects(i,:),finalrects(j,:))>0)
            if(finalouts(i,:)>finalouts(j,:))
                value=finalouts(i,:);
                valrect=finalrects(i,:);
            else
                value=finalouts(j,:);
                valrect=finalrects(j,:);
            end
            if(value>=maxvalue)
                if(value==maxvalue)
                    if(i>j)
                maxvalue=value;
                maxrect=valrect;
                    end
                
            else
                 maxvalue=value;
                maxrect=valrect;
                end
            end
        end
    end
    nfinalrects(i,:)=maxrect;
    nfinalouts(i,:)=maxvalue;
end


figure;

imshow(I,[]);
hold on;
for i=1:size(nfinalrects,1)
    rectangle('Position',nfinalrects(i,:),'EdgeColor','g');
    hold on;
end



% looprects=zeros(100000,4);
% 
% index=1;
% 
% 
% % for i=1:size(rects_12,1)
% %    
% %     looprects(index,:)=6.0*rects_12(i,:);
% %     loopouts(index,:)=finaloutputs_12(i,2);
% %     index=index+1;
% % end
% 
% for i=1:size(rects_11,1)
%     looprects(index,:)=5.5*rects_11(i,:);
%     loopouts(index,:)=finaloutputs_11(i,2);
%     index=index+1;
% end
% 
% % for i=1:size(rects_10,1)
% %     looprects(index,:)=5.0*rects_10(i,:);
% %     loopouts(index,:)=finaloutputs_10(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_9,1)
% %     looprects(index,:)=4.5*rects_9(i,:);
% %     loopouts(index,:)=finaloutputs_9(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_8,1)
% %     looprects(index,:)=4.0*rects_8(i,:);
% %     loopouts(index,:)=finaloutputs_8(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_7,1)
% %     looprects(index,:)=3.5*rects_7(i,:);
% %     loopouts(index,:)=finaloutputs_7(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_6,1)
% %     looprects(index,:)=3.0*rects_6(i,:);
% %     loopouts(index,:)=finaloutputs_6(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_5,1)
% %     looprects(index,:)=2.5*rects_5(i,:);
% %     loopouts(index,:)=finaloutputs_5(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_4,1)
% %     looprects(index,:)=2.0*rects_4(i,:);
% %     loopouts(index,:)=finaloutputs_4(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_3,1)
% %     looprects(index,:)=1.5*rects_3(i,:);
% %     loopouts(index,:)=finaloutputs_3(i,2);
% %     index=index+1;
% % end
% 
% for i=1:size(loopouts,1)
%     maxrect=looprects(i,:);
%     maxvalue=loopouts(i,:);
%     for j=1:size(loopouts,1)
%         if(rectint(looprects(i,:),looprects(j,:))>0)
%             if(loopouts(i,:)>loopouts(j,:))
%                 value=loopouts(i,:);
%                 valrect=looprects(i,:);
%             else
%                 value=loopouts(j,:);
%                 valrect=looprects(j,:);
%             end
%              if(value>maxvalue)
%                 if(value==maxvalue)
%                     if(i>j)
%                 maxvalue=value;
%                 maxrect=valrect;
%                     end
%                 
%             else
%                  maxvalue=value;
%                 maxrect=valrect;
%                 end
%             end
%         end
%     end
%     finalrects(i,:)=maxrect;
% finalouts(i,:)=maxvalue;
% end
% 
% for i=1:size(finalouts,1)
%     maxrect=finalrects(i,:);
%     maxvalue=finalouts(i,:);
%     for j=1:size(loopouts,1)
%         if(rectint(finalrects(i,:),finalrects(j,:))>0)
%             if(finalouts(i,:)>finalouts(j,:))
%                 value=finalouts(i,:);
%                 valrect=finalrects(i,:);
%             else
%                 value=finalouts(j,:);
%                 valrect=finalrects(j,:);
%             end
%             if(value>=maxvalue)
%                 if(value==maxvalue)
%                     if(i>j)
%                 maxvalue=value;
%                 maxrect=valrect;
%                     end
%                 
%             else
%                  maxvalue=value;
%                 maxrect=valrect;
%                 end
%             end
%         end
%     end
%     nfinalrects(i,:)=maxrect;
%     nfinalouts(i,:)=maxvalue;
% end
% 
% 
% figure;
% 
% imshow(I,[]);
% hold on;
% for i=1:size(nfinalrects,1)
%     rectangle('Position',nfinalrects(i,:),'EdgeColor','g');
%     hold on;
% end
% 
% 
% 
% looprects=zeros(100000,4);
% 
% index=1;
% 
% 
% % for i=1:size(rects_12,1)
% %    
% %     looprects(index,:)=6.0*rects_12(i,:);
% %     loopouts(index,:)=finaloutputs_12(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_11,1)
% %     looprects(index,:)=5.5*rects_11(i,:);
% %     loopouts(index,:)=finaloutputs_11(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_10,1)
% %     looprects(index,:)=5.0*rects_10(i,:);
% %     loopouts(index,:)=finaloutputs_10(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_9,1)
% %     looprects(index,:)=4.5*rects_9(i,:);
% %     loopouts(index,:)=finaloutputs_9(i,2);
% %     index=index+1;
% % end
% 
% % for i=1:size(rects_8,1)
% %     looprects(index,:)=4.0*rects_8(i,:);
% %     loopouts(index,:)=finaloutputs_8(i,2);
% %     index=index+1;
% % end
% 
% for i=1:size(rects_7,1)
%     looprects(index,:)=3.5*rects_7(i,:);
%     loopouts(index,:)=finaloutputs_7(i,2);
%     index=index+1;
% end
% % 
% % for i=1:size(rects_6,1)
% %     looprects(index,:)=3.0*rects_6(i,:);
% %     loopouts(index,:)=finaloutputs_6(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_5,1)
% %     looprects(index,:)=2.5*rects_5(i,:);
% %     loopouts(index,:)=finaloutputs_5(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_4,1)
% %     looprects(index,:)=2.0*rects_4(i,:);
% %     loopouts(index,:)=finaloutputs_4(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_3,1)
% %     looprects(index,:)=1.5*rects_3(i,:);
% %     loopouts(index,:)=finaloutputs_3(i,2);
% %     index=index+1;
% % end
% 
% for i=1:size(loopouts,1)
%     maxrect=looprects(i,:);
%     maxvalue=loopouts(i,:);
%     for j=1:size(loopouts,1)
%         if(rectint(looprects(i,:),looprects(j,:))>0)
%             if(loopouts(i,:)>loopouts(j,:))
%                 value=loopouts(i,:);
%                 valrect=looprects(i,:);
%             else
%                 value=loopouts(j,:);
%                 valrect=looprects(j,:);
%             end
%              if(value>maxvalue)
%                 if(value==maxvalue)
%                     if(i>j)
%                 maxvalue=value;
%                 maxrect=valrect;
%                     end
%                 
%             else
%                  maxvalue=value;
%                 maxrect=valrect;
%                 end
%             end
%         end
%     end
%     finalrects(i,:)=maxrect;
% finalouts(i,:)=maxvalue;
% end
% 
% for i=1:size(finalouts,1)
%     maxrect=finalrects(i,:);
%     maxvalue=finalouts(i,:);
%     for j=1:size(loopouts,1)
%         if(rectint(finalrects(i,:),finalrects(j,:))>0)
%             if(finalouts(i,:)>finalouts(j,:))
%                 value=finalouts(i,:);
%                 valrect=finalrects(i,:);
%             else
%                 value=finalouts(j,:);
%                 valrect=finalrects(j,:);
%             end
%             if(value>=maxvalue)
%                 if(value==maxvalue)
%                     if(i>j)
%                 maxvalue=value;
%                 maxrect=valrect;
%                     end
%                 
%             else
%                  maxvalue=value;
%                 maxrect=valrect;
%                 end
%             end
%         end
%     end
%     nfinalrects(i,:)=maxrect;
%     nfinalouts(i,:)=maxvalue;
% end
% 
% 
% figure;
% 
% imshow(I,[]);
% hold on;
% for i=1:size(nfinalrects,1)
%     rectangle('Position',nfinalrects(i,:),'EdgeColor','g');
%     hold on;
% end
% 
% 
% looprects=zeros(100000,4);
% 
% index=1;
% 
% 
% % for i=1:size(rects_12,1)
% %    
% %     looprects(index,:)=6.0*rects_12(i,:);
% %     loopouts(index,:)=finaloutputs_12(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_11,1)
% %     looprects(index,:)=5.5*rects_11(i,:);
% %     loopouts(index,:)=finaloutputs_11(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_10,1)
% %     looprects(index,:)=5.0*rects_10(i,:);
% %     loopouts(index,:)=finaloutputs_10(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_9,1)
% %     looprects(index,:)=4.5*rects_9(i,:);
% %     loopouts(index,:)=finaloutputs_9(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_8,1)
% %     looprects(index,:)=4.0*rects_8(i,:);
% %     loopouts(index,:)=finaloutputs_8(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_7,1)
% %     looprects(index,:)=3.5*rects_7(i,:);
% %     loopouts(index,:)=finaloutputs_7(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_6,1)
% %     looprects(index,:)=3.0*rects_6(i,:);
% %     loopouts(index,:)=finaloutputs_6(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_5,1)
% %     looprects(index,:)=2.5*rects_5(i,:);
% %     loopouts(index,:)=finaloutputs_5(i,2);
% %     index=index+1;
% % end
% % 
% % for i=1:size(rects_4,1)
% %     looprects(index,:)=2.0*rects_4(i,:);
% %     loopouts(index,:)=finaloutputs_4(i,2);
% %     index=index+1;
% % end
% 
% for i=1:size(rects_3,1)
%     looprects(index,:)=1.5*rects_3(i,:);
%     loopouts(index,:)=finaloutputs_3(i,2);
%     index=index+1;
% end
% 
% for i=1:size(loopouts,1)
%     maxrect=looprects(i,:);
%     maxvalue=loopouts(i,:);
%     for j=1:size(loopouts,1)
%         if(rectint(looprects(i,:),looprects(j,:))>0)
%             if(loopouts(i,:)>loopouts(j,:))
%                 value=loopouts(i,:);
%                 valrect=looprects(i,:);
%             else
%                 value=loopouts(j,:);
%                 valrect=looprects(j,:);
%             end
%              if(value>=maxvalue)
%                 if(value==maxvalue)
%                     if(i>j)
%                 maxvalue=value;
%                 maxrect=valrect;
%                     end
%                 
%             else
%                  maxvalue=value;
%                 maxrect=valrect;
%                 end
%             end
%         end
%     end
%     finalrects(i,:)=maxrect;
% finalouts(i,:)=maxvalue;
% end
% 
% for i=1:size(finalouts,1)
%     maxrect=finalrects(i,:);
%     maxvalue=finalouts(i,:);
%     for j=1:size(loopouts,1)
%         if(rectint(finalrects(i,:),finalrects(j,:))>0)
%             if(finalouts(i,:)>finalouts(j,:))
%                 value=finalouts(i,:);
%                 valrect=finalrects(i,:);
%             else
%                 value=finalouts(j,:);
%                 valrect=finalrects(j,:);
%             end
%             if(value>=maxvalue)
%                 if(value==maxvalue)
%                     if(i>j)
%                 maxvalue=value;
%                 maxrect=valrect;
%                     end
%                 
%             else
%                  maxvalue=value;
%                 maxrect=valrect;
%                 end
%             end
%         end
%     end
%     nfinalrects(i,:)=maxrect;
%     nfinalouts(i,:)=maxvalue;
% end
% 
% 
% figure;
% 
% imshow(I,[]);
% hold on;
% for i=1:size(nfinalrects,1)
%     rectangle('Position',nfinalrects(i,:),'EdgeColor','g');
%     hold on;
% end
% 
% 
% 
