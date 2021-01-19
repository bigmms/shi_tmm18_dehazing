function [A] = SVDD_getA(uint_im,ii)

addpath('./prtools/');
addpath('./dd_tools/');
% load trained SVDD
load traC2_33.mat

wK = dd_proxm([],'r',3);

% get image
imtra=uint_im;
%imtra=imresize(imtra,[144,176]);
z_imsize=size(imtra);
% initial
output=zeros(z_imsize);
z=zeros(prod([z_imsize(1),z_imsize(2)]),2);%z_imsize(3)

% get data z
for i=1:2 %z_imsize(3) for 2 chanel ====******3chanel ÐÞ¸Ä
    temp=imtra(:,:,i);
    z(:,i)=temp(:);
end

% d(z) decision rule
wtr = a*wK;
D = +(z*wtr);% D=K
n=size(z,1);
alf=mm2.alf;
E1=sum( repmat(alf',n,1).*D ,2);% alf:Ntrain*Ntest
myX=zeros(size(E1,1),1);
myX(:)=my;
differ=E1-my;


index1=find(differ>=0);% index for light pixels
index0=find(differ<0);% index for non-light pixels
differ(index1)=1;
differ(index0)=0;

%% light image processing by trained SVDD

if ~isempty(index1)  %exist light pattern
    % dilate light region
    differ=reshape(differ,[z_imsize(1),z_imsize(2)]);
    differ=logical(differ);
    se = strel('disk',30);
    differ_dilated=imdilate(differ,se);
    
    for  i=1:z_imsize(3)
        output(:,:,i)=imtra(:,:,i).*uint8(~differ);
        output_dilated(:,:,i)=imtra(:,:,i).*uint8(~differ_dilated);
    end
    light_detect_parh=['./lightDetectResult/' num2str(ii)];
    imwrite(uint8(differ_dilated*255),[light_detect_parh '_mask_dilated.png']);
    imwrite(uint8(output_dilated),[light_detect_parh '_output_dilated.png']);
    imwrite(uint8(output),[light_detect_parh  '_output.png']);
    imwrite(uint8(differ*255),[light_detect_parh '_mask.png']);
    
else
    output_dilated=uint_im;
end
for i=1:3
    temp=output_dilated(:,:,i);
    A(i,1) =max( temp(:));
end
end
