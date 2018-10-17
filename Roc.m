N_pos = 11838;
N_neg = 25356;
N=N_pos+N_neg;

for i=1:N
    if i <= N_pos
    labels(i)=1;
    else
        labels(i)=-1;
    end
end



for i=1:37194
    scores(i)=nhist1(i,1);
end

[X,Y] = perfcurve(labels,scores,1);
figure;
plot(X,Y)
xlabel('False positive rate')
ylabel('True positive rate')
title('ROC for Classification by Realboost 10 Iterations')

for i=1:37194
    scores(i)=nhist2(i,1);
end

[X,Y] = perfcurve(labels,scores,1);
figure;
plot(X,Y)
xlabel('False positive rate')
ylabel('True positive rate')
title('ROC for Classification by Realboost 50 Iterations')

for i=1:37194
    scores(i)=nhist3(i,1);
end

[X,Y] = perfcurve(labels,scores,1);
figure;
plot(X,Y)
xlabel('False positive rate')
ylabel('True positive rate')
title('ROC for Classification by Realboost 100 Iterations')