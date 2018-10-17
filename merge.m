%load('features_full.mat');

% load('nf1features.mat');
% features_2=features_1;
% clear features_1;
% 
% load('nf2features.mat');
% features_i=[features_2,features_1];
% clear features_1;
% clear features_2;
% 
% load('nf3features.mat');
% features_j=[features_i,features_1];
% clear features_1;
% clear features_i;

% save('allfeatures.mat','features');
% clear features;
%save('features_j.mat','features_j');
Data = load('features_j.mat');
DataField = fieldnames(Data);
dlmwrite('allfeatures.txt',features,'delimiter','\t','neline','pc');