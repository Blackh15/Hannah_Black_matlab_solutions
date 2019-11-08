%Assignment 5: Analyzing Isometric strength data
% Due November 7
% 11/7/19
% Hannah Black 

%this code clears everything so my assignment runs and I dont get a bad
%grade and be sad 
clc
clear all
% this code imports the data and assigns variable names
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv')
%this code uses my function genderIsoCalc to calculate the menas for each
%variable
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
%this code uses my function dayComparer to compair the different days 
day1toDay2 = dayComparer(SubjectID, Day1, Day2)
day2toDay3 = dayComparer(SubjectID, Day2, Day3)

%this code normalizes the data by weight and takes the mean of the mean 
 normDay1mean = mean(Day1./Weight)
 normDay2mean = mean(Day2./Weight)
 normDay3mean = mean(Day3./Weight)
 
%this code sets up the results matrix with zeros so that the data can be
%inputted
resultMatrix = zeros(13,9);
%this code puts all nine variables into a result matrix 
for i = 1:length(maleIsoIndMeans);
    resultMatrix(i,1) = maleIsoIndMeans(i)';
end
for i = 1:length(femaleIsoIndMeans);
    resultMatrix(i,2) = femaleIsoIndMeans(i);
end
for i = 1:length(maleGroupIsoMean);
    resultMatrix(i,3) = maleGroupIsoMean(i);
end
for i = 1:length(femaleGroupIsoMean);
    resultMatrix(i,4) = femaleGroupIsoMean(i);
end
for i = 1:length(day1toDay2);
    resultMatrix(i,5) = day1toDay2(i);
end
for i = 1:length(day2toDay3);
    resultMatrix(i,6) = day2toDay3(i);
end
for i = 1:length(normDay1mean);
    resultMatrix(i,7) = normDay1mean(i);
end
for i = 1:length(normDay2mean);
    resultMatrix(i,8) = normDay2mean(i);
end
for i = 1:length(normDay3mean);
    resultMatrix(i,9) = normDay3mean(i);
end
%this code exports the data into a csv. exel spreadsheet 
csvwrite('iso_results.csv', resultMatrix)
 

