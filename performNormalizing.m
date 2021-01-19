function [ out ] = performNormalizing( in )
    maxIn=max(max(in));
    minIn=min(min(in));
    out = (in-minIn)./ (maxIn - minIn);
end

