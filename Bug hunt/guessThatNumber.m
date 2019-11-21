function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Hannah Black
%
%         DUE: End of class, November 21
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n']) 

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');
 

while level ~= beginner && level ~= moderate && level ~= advanced  %Bug3: i changed || to &&. The previous code had too many true values so it was continuously operating (infanite loop = bad). Now it stops after finding the first true value.      
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end 
% set highest secret number based on level selected

if level == beginner     %Bug1: The code ran till this line, so I added another equals sign                 

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;   %bug4: the H isnt capitalized here but it was earlier when the variables were defined.        
end 
% randomly select secret number between 1 and highest for level of play

%bug7: This code slected 10 every time so it wasnt random, I changed it to
%select a random number within the level chosen. 

secretNumber = randi(highest,1);     

% initialize number of guesses and User_guess

%Bug8: when initializing varibales they need to be set to 0 not 1. Putting
%a 1 casued the code to tell me I was going one extra time than I actually
%took. 
numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %Bug5: I changed >= to > becuase it said that 10 was invalid

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop
 

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber     %Bug6: The code was telling me that my guess was too low so i changed the sign from > to <.
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...  %bug9: The game kept tellingme that I got the correct answer in 1 try even though it took a lot more tires, I realized that this statement didnt have a way to tell how many tries so I added numOfTries 
secretNumber, numOfTries);


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
end                 %Bug2: I added another end here becuase the last part of the code wasnt running because it wasnt in the loop. 
end  % of guessing while loop

% end of game