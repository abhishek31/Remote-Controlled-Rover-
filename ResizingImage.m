for i=1:24
I=imread(strcat('realtime\s1','\',num2str(i),'.jpg'));
I=imresize(I,[256,368]);
imwrite(I, strcat('realtime\s1','\',num2str(i),'.jpg'));
end