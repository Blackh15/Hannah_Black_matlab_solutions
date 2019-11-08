%this code sets up the function
function [progress] = dayComparer(SubjectID,Day1,Day2)

%this code sets the counter variable to zero
num = 0;
improved = []; %this code sets up an empty bracket to store results later
for i = 1:length(SubjectID); %this code tells matlab to go through one by one for each subject
    if Day1(i,1) < Day2(i,1); % this code sees if the day 2 value is greater than day one (aka progress)
    num = num+1; %this code is a counter so that matlab doesnt put a bunch of zeros as placeholders
    progress(num,1) = SubjectID(i,1); %this code shows the subject ID if there was progress
    improved = [improved, SubjectID]; %this code stores the data 
    end     
end
   
end    


