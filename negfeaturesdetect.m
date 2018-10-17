function features=negfeaturesdetect(B)

I=zeros(size(B,1),16,16);

for i=1:size(B,1)
    I(i,:,:)=reshape(B(i,:,:),[16,16]);
end

    I = normalize(I);
    II = integral(I);
   
    features= compute_features(II);
    
    clear I;
    clear II;

    %save('features_detect.mat', '-v7.3', 'features');
end

function features = compute_features(II)

 filters=load('filters.mat');
 features = zeros(size(filters.filters, 1), size(II, 1));
for j = 1:size(filters.filters, 1)
    [rects1, rects2] = filters.filters{j,:};
    features(j,:) = apply_filter(II, rects1, rects2);
end
end

function I = normalize(I)
[N,~,~] = size(I);
for i = 1:N
    image = I(i,:,:);
    sigma = std(image(:));
    I(i,:,:) = I(i,:,:) / sigma;
end
end

function II = integral(I)
[N,H,W] = size(I);
II = zeros(N,H+1,W+1);
for i = 1:N
    image = squeeze(I(i,:,:));
    II(i,2:H+1,2:W+1) = cumsum(cumsum(double(image), 1), 2);
end
end

function sum = apply_filter(II, rects1, rects2)
sum = 0;
% white rects
for k = 1:size(rects1,1)
    r1 = rects1(k,:);
    w = r1(3);
    h = r1(4);
    sum = sum + sum_rect(II, [0, 0], r1) / (w * h * 255);
end
% black rects
for k = 1:size(rects2,1)
    r2 = rects2(k,:);
    w = r2(3);
    h = r2(4);
    sum = sum - sum_rect(II, [0, 0], r2) / (w * h * 255);
end
end

function result = sum_rect(II, offset, rect)
x_off = offset(1);
y_off = offset(2);

x = rect(1);
y = rect(2);
w = rect(3);
h = rect(4);

a1 = II(:, y_off + y + h, x_off + x + w);
a2 = II(:, y_off + y + h, x_off + x);
a3 = II(:, y_off + y,     x_off + x + w);
a4 = II(:, y_off + y,     x_off + x);

result = a1 - a2 - a3 + a4;
end

function rects = filters_A()
count = 1;
w_min = 4;
h_min = 4;
w_max = 16;
h_max = 16;
rects = cell(1,2);
for w = w_min:2:w_max
    for h = h_min:h_max
        for x = 1:(w_max-w)
            for y = 1:(h_max-h)
                r1_x = x;
                r1_y = y;
                r1_w = w/2;
                r1_h = h;
                r1 = [r1_x, r1_y, r1_w, r1_h];
                
                r2_x = r1_x + r1_w;
                r2_y = r1_y;
                r2_w = w/2;
                r2_h = h;
                r2 = [r2_x, r2_y, r2_w, r2_h];
                
                rects{count, 1} = r1; % white
                rects{count, 2} = r2; % black
                count = count + 1;
            end
        end
    end
end
end

function rects = filters_B()
count = 1;
w_min = 4;
h_min = 4;
w_max = 16;
h_max = 16;
rects = cell(1,2);
for w = w_min:w_max
    for h = h_min:2:h_max
        for x = 1:(w_max-w)
            for y = 1:(h_max-h)
                r1_x = x;
                r1_y = y;
                r1_w = w;
                r1_h = h/2;
                r1 = [r1_x, r1_y, r1_w, r1_h];
                
                r2_x = r1_x;
                r2_y = r1_y + r1_h;
                r2_w = w;
                r2_h = h/2;
                r2 = [r2_x, r2_y, r2_w, r2_h];
                
                rects{count, 1} = r2; % white
                rects{count, 2} = r1; % black
                count = count + 1;
            end
        end
    end
end
end

function rects = filters_C()
count = 1;
w_min = 6;
h_min = 4;
w_max = 16;
h_max = 16;
rects = cell(1,2);
for w = w_min:3:w_max
    for h = h_min:h_max
        for x = 1:(w_max-w)
            for y = 1:(h_max-h)
                r1_x = x;
                r1_y = y;
                r1_w = w/3;
                r1_h = h;
                r1 = [r1_x, r1_y, r1_w, r1_h];
                
                r2_x = r1_x + r1_w;
                r2_y = r1_y;
                r2_w = w/3;
                r2_h = h;
                r2 = [r2_x, r2_y, r2_w, r2_h];
                
                r3_x = r1_x + r1_w + r2_w;
                r3_y = r1_y;
                r3_w = w/3;
                r3_h = h;
                r3 = [r3_x, r3_y, r3_w, r3_h];
                
                rects{count, 1} = [r1; r3]; % white
                rects{count, 2} = r2; % black
                count = count + 1;
            end
        end
    end
end
end

function rects = filters_D()
count = 1;
w_min = 6;
h_min = 6;
w_max = 16;
h_max = 16;
rects = cell(1,2);
for w = w_min:2:w_max
    for h = h_min:2:h_max
        for x = 1:(w_max-w)
            for y = 1:(h_max-h)
                r1_x = x;
                r1_y = y;
                r1_w = w/2;
                r1_h = h/2;
                r1 = [r1_x, r1_y, r1_w, r1_h];
                
                r2_x = r1_x+r1_w;
                r2_y = r1_y;
                r2_w = w/2;
                r2_h = h/2;
                r2 = [r2_x, r2_y, r2_w, r2_h];
                
                r3_x = x;
                r3_y = r1_y+r1_h;
                r3_w = w/2;
                r3_h = h/2;
                r3 = [r3_x, r3_y, r3_w, r3_h];
                
                r4_x = r1_x+r1_w;
                r4_y = r1_y+r2_h;
                r4_w = w/2;
                r4_h = h/2;
                r4 = [r4_x, r4_y, r4_w, r4_h];
                
                rects{count, 1} = [r2; r3]; % white
                rects{count, 2} = [r1; r4]; % black
                count = count + 1;
            end
        end
    end
end
end

function test_sum_rect()
% 1
I = zeros(1,16,16);
I(1,2:4,2:4) = 1;
%disp(squeeze(I(1,:,:)));
II = integral(I);
assert(sum_rect(II, [0, 0], [2, 2, 3, 3]) == 9);
assert(sum_rect(II, [0, 0], [10, 10, 2, 2]) == 0);

% 2
I = zeros(1,16,16);
I(1,10:16,10:16) = 1;
%disp(squeeze(I(1,:,:)));
II = integral(I);
assert(sum_rect(II, [0, 0], [10, 10, 2, 2]) == 4);

% 3
I = zeros(1,16,16);
I(1,:,:) = 0;
I(1,3:6,3:6) = 1;
I(1,3:6,11:14) = 1;
%disp(squeeze(I(1,:,:)));
II = integral(I);
assert(sum_rect(II, [0, 0], [11, 3, 6, 6]) == 16);

% 4
I = zeros(1,16,16);
I(1,:,:) = 0;
I(1,3:6,3:6) = 1;
I(1,3:6,11:14) = 1;
%disp(squeeze(I(1,:,:)));
II = integral(I);
assert(sum_rect(II, [0, 0], [3, 4, 4, 4]) == 12);
assert(sum_rect(II, [0, 0], [7, 4, 4, 4]) == 0);
assert(sum_rect(II, [0, 0], [11, 4, 4, 4]) == 12);
assert(sum_rect(II, [0, 0], [3, 3, 4, 4]) == 16);
assert(sum_rect(II, [0, 0], [11, 3, 4, 4]) == 16);

end

function test_filters()

% A
I = zeros(1,16,16);
I(1,:,:) = 255;
I(1,5:8,5:8) = 0;
II = integral(I);
%disp(squeeze(I(1,:,:)));
rects = filters_A();
max_size = 0;
max_sum = 0;
for i = 1:size(rects, 1)
    [r1s, r2s] = rects{i,:};
    f_sum = apply_filter(II, r1s, r2s);
    f_size = r1s(1,3) * r1s(1,4) + r2s(1,3) * r2s(1,4);
    if(and(f_sum > max_sum, f_size == 4*4*2))
        max_size = f_size;
        max_sum = f_sum;
        min_f = [r1s, r2s];
    end
end
assert(max_sum == 1);
assert(max_size == 4*4*2);
assert(isequal(min_f, [1 5 4 4 5 5 4 4]));

% B
I = zeros(1,16,16);
I(1,:,:) = 255;
I(1,2:5,2:5) = 0;
II = integral(I);
%disp(squeeze(I(1,:,:)));
rects = filters_B();
max_size = 0;
max_sum = 0;
for i = 1:size(rects, 1)
    [r1s, r2s] = rects{i,:};
    f_sum = apply_filter(II, r1s, r2s);
    f_size = r1s(1,3) * r1s(1,4) + r2s(1,3) * r2s(1,4);
    if(and(f_sum > max_sum, f_size == 4*4*2))
        max_size = f_size;
        max_sum = f_sum;
        min_f = [r1s, r2s];
    end
end
assert(max_sum == 1);
assert(max_size == 4*4*2);
assert(isequal(min_f, [2 6 4 4 2 2 4 4]));

% C
I = zeros(1,16,16);
I(1,:,:) = 0;
I(1,3:6,3:6) = 255;
I(1,3:6,11:14) = 255;
II = integral(I);
%disp(squeeze(I(1,:,:)));
rects = filters_C();
max_size = 0;
max_sum = 0;
for i = 1:size(rects, 1)
    [r1s, r2s] = rects{i,:};
    f_sum = apply_filter(II, r1s, r2s);
    f_size = r1s(1,3) * r1s(1,4) + r1s(2,3) * r1s(2,4) + r2s(1,3) * r2s(1,4);
    if(and(f_sum > max_sum, f_size == 4*4*3))
        max_size = f_size;
        max_sum = f_sum;
        min_f = [reshape(r1s', [1,8]), r2s];
    end
end
assert(max_sum == 2);
assert(max_size == 4*4*3);
assert(isequal(min_f, [3 3 4 4 11 3 4 4 7 3 4 4]));

% D
I = zeros(1,16,16);
I(1,:,:) = 255;
I(1,2:5,2:5) = 0;
I(1,6:9,6:9) = 0;
II = integral(I);
%disp(squeeze(I(1,:,:)));
rects = filters_D();
max_size = 0;
max_sum = 0;
for i = 1:size(rects, 1)
    [r1s, r2s] = rects{i,:};
    f_sum = apply_filter(II, r1s, r2s);
    f_size = r1s(1,3) * r1s(1,4) + r1s(2,3) * r1s(2,4) + r2s(1,3) * r2s(1,4) + r2s(2,3) * r2s(2,4);
    if(and(f_sum > max_sum, f_size == 4*4*4))
        max_size = f_size;
        max_sum = f_sum;
        min_f = [reshape(r1s', [1,8]), reshape(r2s', [1,8])];
    end
end
assert(max_sum == 2);
assert(max_size == 4*4*4);
assert(isequal(min_f, [6 2 4 4 2 6 4 4 2 2 4 4 6 6 4 4]));

end