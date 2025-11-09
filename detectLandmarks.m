
function landmarks = detectLandmarks(img)
    % Convert to grayscale
    gray = rgb2gray(img);

    % Detect face
    faceDetector = vision.CascadeObjectDetector();
    bbox = step(faceDetector, gray);
    if isempty(bbox)
        error('No face detected.');
    end

    % Crop and detect facial landmarks
    face = imcrop(gray, bbox(1,:));
    points = detectMinEigenFeatures(face);
    points = points.selectStrongest(68);

    landmarks = points.Location;
end
