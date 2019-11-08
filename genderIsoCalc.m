%this code sets up the function
function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(variable,X1,X2,X3)

%this code sets up an empty bracket to store results later
maleIsoIndMeans = [];
femaleIsoIndMeans = [];

%this code tells matlab to go through one by one for each subject 
for i= 1:length(variable)
%this code checks to see if the subject is a male and if it is then it puts that data into the maleAverage variable    
if variable (i) == 'M'
%this  code calculates the male average   
maleAverage = (X1(i) + X2(i) + X3(i))/3
%this code stores the male average
maleIsoIndMeans = [maleAverage, maleIsoIndMeans];
else %this code only runs if the subject isnt a male (aka a female)
femaleAverage = (X1(i) + X2(i) + X3(i))/3 %this code calculates the female averag
femaleIsoIndMeans = [femaleAverage, femaleIsoIndMeans]; %%this code stores the female average
    end 
end 

% this code takes the average for the whole group of males
maleGroupIsoMean = sum(maleIsoIndMeans)./(length(maleIsoIndMeans));
% this code takes the average for the whole group of females
femaleGroupIsoMean = sum(femaleIsoIndMeans)./(length(femaleIsoIndMeans));

end 