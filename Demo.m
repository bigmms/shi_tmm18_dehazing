clc; clear; close all;

gamma = 1.989882860834471;   
lamda = 0.588071394001276;
epsilon = 0.149281990361389; 

imgRoot = './TestImages/';
addpath(imgRoot);
addpath('./Results/');
imnames=dir([imgRoot '*' 'png']);
for ii=1:length(imnames)
    uint_im=imread(imnames(ii).name);
    j = SVDD_Dehazing( uint_im, gamma, lamda, epsilon,ii );
    
    strin = sprintf('./Results/%s_SVD%s',imnames(ii).name(1:end-4),imnames(ii).name(end-3:end)) ;
    imwrite(uint8(j.*255),strin) ;
end