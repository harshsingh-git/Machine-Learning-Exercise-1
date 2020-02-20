data = load('ex1data2.txt')
X = data(:,1:2);
y = data(:, 3);
a = data(:, 1);
b = data(:, 2);
m = length(y);
figure(1);
plot(a, y, 'bo');
figure(2);
plot(b, y, 'ro');
[X mu sigma] = featureNormalize(X);
X = [ones(m,1) X];
alpha = 0.001;
num_iters = 4000;
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
figure(3);
plot(1:numel(J_history), J_history, 'xy', 'LineWidth', 2);
age = input("Enter your Age: ")
ch_level = input("Enter your Cholesterol Level: ")
x = [1 age ch_level]'
Chances_of_Heart_Attack = (theta' * x) / 100