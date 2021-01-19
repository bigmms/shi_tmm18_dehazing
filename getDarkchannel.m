function [ DarkChannel] = getDarkchannel(im, mask_size)
   
    minChannel = min(im, [], 3);
    DarkChannel = ordfilt2(minChannel, 1, ones(mask_size), 'symmetric');

end

