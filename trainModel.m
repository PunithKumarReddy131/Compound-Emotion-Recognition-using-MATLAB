
% Dummy training script for generating emotionsModel.mat
X = rand(100,4); % 4 features
Y = categorical(randi(5,100,1)); % 5 classes

trainedModel = fitcecoc(X, Y); % Multi-class SVM model

save('emotionsModel.mat', 'trainedModel');
