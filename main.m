
%���ļ�clc;
clear all;
close all;
%����ȫ�ֱ��� R�����������Ľ��ͼ��BW����ֵ��ͼ��counter������Ȥ��ͨ��������ظ���
%row��ͼ���������col��ͼ�������
global R BW counter row col
  
I = imread('1.bmp');
I=rgb2gray(I);
% I = I(:,:,1);
[row,col] = size(I);
figure,imshow(I);
  
level = graythresh(I);
BW = im2bw(I,level);
figure,imshow(BW);
  
[y0,x0] = getpts;
x0 = uint32(x0);
y0 = uint32(y0);
counter = 0;
R = zeros(row,col);
R = uint8(R);
fsrRegiongrow(x0,y0,4);% fsrRegiongrow1(x0,y0,4);
figure,imshow(R)
