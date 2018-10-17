npos=11838;
%load('filters.mat','filters');

figure;
for i=1:20
    k=results{i,2};
    subplot(4,5,i);
    f1=filters{k,1};
    for j=1:size(f1,1)
        f11=f1(j,:);
    rectangle('Position',f11,'FaceColor',[1 1 1])
    hold on;
    end
    
    f2=filters{k,2};
    for j=1:size(f2,1)
        f21=f2(j,:);
    rectangle('Position',f21,'FaceColor',[0 0 0])
    hold on;
    end
    
    hold off;   
end

figure;

plot(cell2mat(results(:,4)));

figure;

plot(cell2mat(Newweakerr1(:,1)));

hold on;


plot(cell2mat(Newweakerr2(:,1)));

hold on;


plot(cell2mat(Newweakerr4(:,1)));

hold on;
plot(cell2mat(Newweakerr3(:,1)));
hold off;



figure;
x=cell2mat(hist1(1:npos,1));
histogram(x);
hold on;
y=cell2mat(hist1(npos+1:37194,1));
histogram(y);
hold off;

figure;
x=cell2mat(hist2(1:npos,1));
histogram(x);
hold on;
y=cell2mat(hist2(npos+1:37194,1));
histogram(y);
hold off;

figure;
x=cell2mat(hist3(1:npos,1));
histogram(x);
hold on;
y=cell2mat(hist3(npos+1:37194,1));
histogram(y);
hold off;
