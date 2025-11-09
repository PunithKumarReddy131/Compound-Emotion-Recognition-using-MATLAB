% Go to the project directory
cd('C:\Users\punee\OneDrive\Documents\MATLAB Project');

% Step 1: Simulate dummy training data
numSamples = 100;
numFeatures = 20;

X = rand(numSamples, numFeatures);  % Random features
labels = {'happy-surprised', 'angry-disgusted', 'sad-fearful', 'happy-neutral', 'surprised-fearful'};
Y = labels(randi(numel(labels), numSamples, 1))';
Y = categorical(Y);

% Step 2: Train a basic SVM model
trainedModel = fitcecoc(X, Y);

% Step 3: Save the model correctly as a binary .mat file
save('emotionsModel.mat', 'trainedModel');

disp('✅ emotionsModel.mat has been successfully created!');
