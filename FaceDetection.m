%Feature Extraction
%m=16;
% n=16;
% i=1;
% I= rgb2gray(imread(sprintf('C:/Users/Sasank/Downloads/Masters/PR&ML/Testing_Images/Testing_Images/Face_%d.jpg',i), 'jpg'));
% S=imresize(I,1/4.5);
% B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
% results=load('results_new200.txt');
% for i=1:200
%     weakfilters(i,:)=results(i,2)+1;
% end
% scale_features9=extractfeatures(B,weakfilters);
% save('scale_4.5features.mat','scale_features9');
% clear B;
% clear S;
% clear scale_features9;
% 
% S=imresize(I,1/4.0);
% results=load('results_new200.txt');
% B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
% for i=1:200
%     weakfilters(i,:)=results(i,2)+1;
% end
% scale_features8=extractfeatures(B,weakfilters);
% save('scale_4.0features.mat','scale_features8');
% clear B;
% clear S;
% clear scale_features8;
% 
% S=imresize(I,1/3.5);
% results=load('results_new200.txt');
% B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
% for i=1:200
%     weakfilters(i,:)=results(i,2)+1;
% end
% scale_features7=extractfeatures(B,weakfilters);
% save('scale_3.5features.mat','scale_features7');
% clear B;
% clear S;
% clear scale_features7;
% 
% S=imresize(I,1/3.0);
% results=load('results_new200.txt');
% B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
% for i=1:200
%     weakfilters(i,:)=results(i,2)+1;
% end
% scale_features6=extractfeatures(B,weakfilters);
% save('scale_3.0features.mat','scale_features6');
% clear B;
% clear S;
% clear scale_features6;
% 
% S=imresize(I,1/2.5);
% results=load('results_new200.txt');
% B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
% for i=1:200
%     weakfilters(i,:)=results(i,2)+1;
% end
% scale_features5=extractfeatures(B,weakfilters);
% save('scale_2.5features.mat','scale_features5');
% clear B;
% clear S;
% clear scale_features5;
% 
% S=imresize(I,1/2.0);
% results=load('results_new200.txt');
% B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
% for i=1:200
%     weakfilters(i,:)=results(i,2)+1;
% end
% scale_features4=extractfeatures(B,weakfilters);
% save('scale_2.0features.mat','scale_features4');
% clear B;
% clear S;
% clear scale_features4;
% 
% S=imresize(I,1/1.5);
% results=load('results_new200.txt');
% B=im2col(reshape(S,size(S,1),size(S,2)),[m,n],'sliding');
% for i=1:200
%     weakfilters(i,:)=results(i,2)+1;
% end
% scale_features3=extractfeatures(B,weakfilters);
% save('scale_1.5features.mat','scale_features3');
% clear scale_features3;




