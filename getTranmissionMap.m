function [ t ] = getTranmissionMap( im, gamma, lamda, epsilon )
mask_size = 15;
w = 0.95;

I_d = getDarkchannel(im, mask_size);
t_tilde = 1 - w.*(I_d);
nhoodSize = 60;
smoothValue = 10^-2;
t_ref = imguidedfilter(t_tilde, im, 'NeighborhoodSize', nhoodSize, 'DegreeOfSmoothing',smoothValue);

t = lamda.*t_ref.^gamma + epsilon;



end

