%Feature Extraction
m=16;
n=16;
i=3;
I= rgb2gray(imread(sprintf('C:/Users/Sasank/Downloads/Masters/PR&ML/Testing_Images/Testing_Images/Face_%d.jpg',i), 'jpg'));
results=load('HardResults.txt');
S=imresize(I,1/6.0);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');

for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features12=extractfeatures(B,weakfilters);
save('hf3scale_6.0features.mat','hf3scale_features12');
clear B;
clear S;
clear hf3scale_features12;



S=imresize(I,1/5.5);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
results=load('HardResults.txt');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features11=extractfeatures(B,weakfilters);
save('hf3scale_5.5features.mat','hf3scale_features11');
clear B;
clear S;
clear hf3scale_features11;



S=imresize(I,1/5.0);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
results=load('HardResults.txt');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features10=extractfeatures(B,weakfilters);
save('hf3scale_5.0features.mat','hf3scale_features10');
clear B;
clear S;
clear hf3scale_features10;



S=imresize(I,1/4.5);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
results=load('HardResults.txt');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features9=extractfeatures(B,weakfilters);
save('hf3scale_4.5features.mat','hf3scale_features9');
clear B;
clear S;
clear hf3scale_features9;

S=imresize(I,1/4.0);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features8=extractfeatures(B,weakfilters);
save('hf3scale_4.0features.mat','hf3scale_features8');
clear B;
clear S;
clear hf3scale_features8;

S=imresize(I,1/3.5);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features7=extractfeatures(B,weakfilters);
save('hf3scale_3.5features.mat','hf3scale_features7');
clear B;
clear S;
clear hf3scale_features7;

S=imresize(I,1/3.0);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features6=extractfeatures(B,weakfilters);
save('hf3scale_3.0features.mat','hf3scale_features6');
clear B;
clear S;
clear hf3scale_features6;

S=imresize(I,1/2.5);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features5=extractfeatures(B,weakfilters);
save('hf3scale_2.5features.mat','hf3scale_features5');
clear B;
clear S;
clear hf3scale_features5;

S=imresize(I,1/2.0);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features4=extractfeatures(B,weakfilters);
save('hf3scale_2.0features.mat','hf3scale_features4');
clear B;
clear S;
clear hf3scale_features4;

S=imresize(I,1/1.5);
B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
for i=1:200
    weakfilters(i,:)=results(i,2)+1;
end
hf3scale_features3=extractfeatures(B,weakfilters);
save('hf3scale_1.5features.mat','hf3scale_features3');
clear hf3scale_features3;
clear B;
clear S;




