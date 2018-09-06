## Author: merayman
## Created: 2018-09-01

%% implementation of a basic forward propagation algorithm with 1 hidden layer.

%% @param W1 is a n×m matrix representing the weights from the input layer to the hidden layer.
%% @param W2 is a m dimensional vector representing weights between the hidden layer and the output layer.
%% @param X is a k×n matrix representing the data points.

function [predictions] = predict (W1, W2, X)
  Z = X * W1; %Z for z function
  H = 1.0 ./ (1.0 + exp(-Z)); %H for hidden layer
  predictions = H * W2; 
endfunction
