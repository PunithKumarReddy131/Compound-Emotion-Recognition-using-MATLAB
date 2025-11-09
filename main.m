
clc; clear; close all;

% Load image
img = imread('image2.jpeg');
imshow(img); title('Input Image');

% Step 1: Detect facial landmarks
landmarks = detectLandmarks(img);

% Step 2: Extract morphological features
features = extractFeatures(landmarks);

% Step 3: Load trained emotion classifier
load('emotionsModel.mat', 'trainedModel');

% Step 4: Predict compound emotion
emotionLabel = classifyEmotion(features, trainedModel);

% Display result
disp(['Predicted Compound Emotion: ', emotionLabel]);
