%%% face recognition by Kalyan Sourav Dash %%%
clear all
close all
clc
%%%%%%%  provide the data path where the training images are present  %%%%%%%
%%% if your matlab environment doesn't support 'uigetdir' function
%%% change those lines in code for datapath and testpath as :
% datapath = 'give here the path of your training images';
% testpath = 'similarly give the path for test images';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% datapath = uigetdir('C:\Documents and Settings\Rageeni\My Documents\MATLAB','select path of training images');
datapath ='realtime\s1';
testpath ='C:\Users\Dell Pc\Documents\MATLAB\frame extraction\snaps';

prompt = {'Enter test image name (a number between 1 to 10):'};
dlg_title = 'Input of PCA-Based Face Recognition System';
num_lines= 1;
def = {' '};
TestImage = inputdlg(prompt,dlg_title,num_lines,def);
TestImage = strcat(testpath,'\',char(TestImage),'.jpg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%

recognized_index = facerecog(datapath,TestImage);   % Function Calling
if recognized_index==0
  disp('!!!!! Alert Alert!!!!! ...Unauthorized Person.....')
%     print('.....Unauthorized Person......');
else
recog_img = strcat(int2str(recognized_index),'.jpg');
selected_img = strcat(datapath,'\',recog_img);
select_img = imread(selected_img);
imshow(select_img);
title('Recognized Image');
test_img = imread(TestImage);
figure,imshow(test_img);
title('Test Image');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
result = strcat('the recognized image is : ',recog_img);
disp(result);
end