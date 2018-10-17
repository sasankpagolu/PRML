npos=11838;
%filters=load('filters.mat');
results=load('realboostresults.txt');
% figure;
% for i=1:20
%     k=results(i,2);
%     subplot(4,5,i);
%     f1=filters.filters{k,1};
%     for j=1:size(f1,1)
%         f11=f1(j,:);
%     rectangle('Position',f11,'FaceColor',[1 1 1])
%     hold on;
%     end
%     
%     f2=filters.filters{k,2};
%     for j=1:size(f2,1)
%         f21=f2(j,:);
%     rectangle('Position',f21,'FaceColor',[0 0 0])
%     hold on;
%     end
%     
%     hold off;   
% end

figure;

plot((results(:,4)));

% figure;
% 
% nweakerr1=load('sortedweakerr0.txt');
% plot((nweakerr1(:,1)));
% 
% hold on;
% 
% nweakerr2=load('sortedweakerr10.txt');
% plot((nweakerr2(:,1)));
% 
% hold on;
% 
% nweakerr4=load('sortedweakerr50.txt');
% plot((nweakerr4(:,1)));
% 
% hold on;
% 
% nweakerr3=load('sortedweakerr100.txt');
% plot((nweakerr3(:,1)));
% hold off;


nhist1=load('realhist10.txt');
figure;
x=(nhist1(1:npos,1));
histogram(x);
hold on;
y=(nhist1(npos+1:37194,1));
histogram(y);
hold off;

nhist2=load('realhist50.txt');
figure;
x=(nhist2(1:npos,1));
histogram(x);
hold on;
y=(nhist2(npos+1:37194,1));
histogram(y);
hold off;

nhist3=load('realhist100.txt');
figure;
x=(nhist3(1:npos,1));
histogram(x);
hold on;
y=(nhist3(npos+1:37194,1));
histogram(y);
hold off;
