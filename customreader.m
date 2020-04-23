function X = customreader(filename)
    X = imread(filename);
    if size(X,3) == 1
        X = cat(3, X, X, X);     
    end
    X = imresize(X,[227 227]);
end