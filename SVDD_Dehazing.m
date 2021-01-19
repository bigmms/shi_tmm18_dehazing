function [ j ] = SVDD_Dehazing( uint_im, gamma, lamda, epsilon,ii )

im = imresize(double( uint_im ), 1.0 )./255 ;

A =double(SVDD_getA(uint_im,ii))./255; % Using SVDD to detect the best airlight

t = getTranmissionMap( im, gamma, lamda, epsilon );

j = getHazefree( im, t, A);

j(:,:,1) = performNormalizing( j(:,:,1) );
j(:,:,2) = performNormalizing( j(:,:,2) );
j(:,:,3) = performNormalizing( j(:,:,3) );

end

