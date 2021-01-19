function [ j ] = getHazefree( im, t, A )
[imax,jmax,zmax] = size(im);
t = max(t,0.01);
j=zeros(imax,jmax,zmax);
for z=1:zmax
    j(:,:,z) = (im(:,:,z) - A(z)) ./ t + A(z);
end


end

