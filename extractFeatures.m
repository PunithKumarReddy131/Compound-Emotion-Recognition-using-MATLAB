
function features = extractFeatures(landmarks)
    % Example morphological features:
    % 1. Eye distance
    eyeDist = norm(landmarks(37,:) - landmarks(46,:));

    % 2. Mouth width
    mouthWidth = norm(landmarks(49,:) - landmarks(55,:));

    % 3. Eyebrow height
    browHeight = norm(landmarks(19,:) - landmarks(37,:));

    % 4. Nose length
    noseLength = norm(landmarks(28,:) - landmarks(34,:));

    features = [eyeDist, mouthWidth, browHeight, noseLength];
end
