function label = classifyEmotion(features, model)
    % Ensure features is a row vector
    if size(features, 1) > 1
        features = features'; % transpose to row
    end

    % Adjust feature length to exactly 20
    if length(features) < 20
        features(end+1:20) = 0; % pad with zeros
    elseif length(features) > 20
        features = features(1:20); % trim extra elements
    end

    % Final check
    assert(isequal(size(features), [1, 20]), 'Feature vector must be 1x20');

    % Predict using the model
    label = predict(model, features);
end
