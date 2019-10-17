% Hannah Black
% 10/1/19
%TicTacToe with loops
% This code is an interactive tic tac toe game between the user and the
% computer


clear all %this clears all variables
clc %this clears the command window
disp('Welcome to Hannahs Tic Tac Toe Game')  % this welcomes the user 
boxPrompt= 'User Question'; %this is the question that pops up asking the user to play
boxQuestion = 'Do you wish to play?'; 
choice = questdlg(boxQuestion,boxPrompt,'Yes','No', 'Yes'); %gives the user a yes or no option to play
 
if strcmp(choice, 'No') %repsonse to no, ends the game and says okay bye
disp('Okay bye!!!') 
return;
end

while strcmp(choice, 'Yes') %while loop that keeps the code running for as long as the user wants to play
fprintf('There are 9 spots to choose from, here is an example board\n') %prompt guiding the user about the board
sampleBoard = ['1 |' ' 2|' ' 3';'4 |' ' 5|' ' 6';'7 |' ' 8|' ' 9']; %board layout



for i= 1:9 %for loop that allows 9 moves between the user and the computer
    if rem(i,2)==1 % a remainder check that tells matlab to run the player input on every odd turn 
 disp(sampleBoard) % this displays the board     
x = input ('Make your move, pick a spot on the board 1:9 to make an x: ') %this asks for the users move (an integer 1-9)
usedMoves = [ ]; %this stores each move so neither the user or computer makes a move thats already there

% this is a check to make sure the user is inputing an integer 1-9, if the
% user inputs any non integer 1-9 it will return error 
while (x<1 | x>9) |  (floor(x)~=x) %this is a while loop that ensures the user inputs an integer 1-9
    fprintf('Error, you must pick an integer 1-9\n') % error message if the userm inputs anythign thats not an integer 1-9
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ') %this asks the user to input a integer 1-9 to make thier moves, this same part of code is used for all player moves  
end 

if ismember(x,usedMoves) %this is a check to make sure that the user doesnt try to pick a spot on the board that already filled
    fprintf('This move is already taken, try again') %this is the error that pops up to the user when they pick a spot thats already taken
    x = input ('Make your move, pick a spot on the board that isnt already taken. If you chose another taken spot you lose.: ') %this asks the user to try again to make their move
if ismember(x,usedMoves) %this is the check that makes sure the user isnt overriding a used move
        fprintf('Game over, you lose')    
        return
end  
end

% move 1 (person)
switch (x) %this is a switch statement that changes the integer the user inputs to an x with the corresponding coordinates on the board
case 1
        sampleBoard(1,1) = 'x';
    case 2
        sampleBoard (1,5) = 'x';
    case 3
        sampleBoard (1,8) = 'x';
    case 4
        sampleBoard (2,1) = 'x';
    case 5
        sampleBoard (2,5) = 'x';
    case 6
        sampleBoard (2,8) = 'x';
    case 7 
        sampleBoard (3,1) = 'x';
    case 8
        sampleBoard (3,5) = 'x';
    case 9
        sampleBoard (3,8) = 'x';
end
    
usedMoves= [usedMoves,x]; %storing used numbers to make sure the user doesnt pick the same move
disp(sampleBoard)

if i > 4 %if statement telling matlab to check for user wins after the 4th turn
if sampleBoard (1,1)=='x' & sampleBoard (2,1)=='x' & sampleBoard (3,1)=='x'
    fprintf('You win!!!\n') 
    break
elseif  sampleBoard (1,5)=='x' & sampleBoard (2,5)=='x' & sampleBoard (3,5)=='x'
    fprintf('You win!!!\n')
    break
elseif  sampleBoard (1,8)=='x' & sampleBoard (2,8)=='x' & sampleBoard (3,8)=='x'
    fprintf('You win!!!\n')  
    break
elseif  sampleBoard (1,1)=='x' & sampleBoard (1,5)=='x' & sampleBoard (1,8)=='x'
    fprintf('You win!!!\n') 
    break
elseif  sampleBoard (2,1)=='x' & sampleBoard (2,5)=='x' & sampleBoard (2,8)=='x'
    fprintf('You win!!!\n')  
    break
elseif  sampleBoard (3,1)=='x' & sampleBoard (3,5)=='x' & sampleBoard (3,8)=='x'
    fprintf('You win!!!\n')
    break
elseif  sampleBoard (1,1)=='x' & sampleBoard (2,5)=='x' & sampleBoard (3,8)=='x'
    fprintf('You win!!!\n') 
    break
elseif  sampleBoard (1,8)=='x' & sampleBoard (2,5)=='x' & sampleBoard (3,1)=='x'
    fprintf('You win!!!\n') 
    break
end 
end

% Computer moves (the computer will move in the first avalible spot) 
    
if sampleBoard (1,1) == '1';
    sampleBoard (1,1) = 'O';
    cpuMove = (1)
elseif sampleBoard (1,5) == '2';
        sampleBoard (1,5) = 'O';
        cpuMove = (2)
elseif sampleBoard (1,8) == '3';
        sampleBoard (1,8) = 'O';
        cpuMove = (3)
elseif sampleBoard (2,1) == '4';
        sampleBoard (2,1) = 'O';
        cpuMove = (4)
elseif sampleBoard (2,5) == '5';
        sampleBoard (2,5) = 'O';  
        cpuMove = (5)
elseif sampleBoard (2,8) == '6';
        sampleBoard (2,8) = 'O';  
        cpuMove = (6)
elseif sampleBoard (3,1) == '7';
        sampleBoard (3,1) = 'O';  
        cpuMove = (7)
elseif sampleBoard (3,5) == '8';
        sampleBoard (3,5) = 'O'; 
        cpuMove = (8)
elseif sampleBoard (3,8) == '9';
        sampleBoard (3,8) = 'O';  
        cpuMove = (9)
end

else 
        if ismember(cpuMove,usedMoves) %this is the check that makes sure the computer isnt overriding a used move
        cpuMove = randi([1,9]); %im going to be honest I dont really rememeber what this does but when I took it out everything got messed up
        end


    end

usedMoves= [usedMoves,cpuMove]; %storing used numbers to make sure the computer doesnt pick the same move or a move thats already been used 

if i>4 %if statement telling matlab to check for computer wins after the 4th turn
if sampleBoard (1,1)=='O' & sampleBoard (2,1)=='O' & sampleBoard (3,1)=='O'
    fprintf('You lose!!!\n')
    disp(sampleBoard)
    break
elseif  sampleBoard (1,5)=='O' & sampleBoard (2,5)=='O' & sampleBoard (3,5)=='O'
    fprintf('You lose!!!\n')
    disp(sampleBoard)
    break
elseif  sampleBoard (1,8)=='O' & sampleBoard (2,8)=='O' & sampleBoard (3,8)=='O'
    fprintf('You lose!!!\n') 
    disp(sampleBoard)
    break
elseif  sampleBoard (1,1)=='O' & sampleBoard (1,5)=='O' & sampleBoard (1,8)=='O'
    fprintf('You lose!!!\n') 
    disp(sampleBoard)
    break
elseif  sampleBoard (2,1)=='O' & sampleBoard (2,5)=='O' & sampleBoard (2,8)=='O'
    fprintf('You lose!!!\n')
    disp(sampleBoard)
    break
elseif  sampleBoard (3,1)=='O' & sampleBoard (3,5)=='O' & sampleBoard (3,8)=='O'
    fprintf('You lose!!!\n') 
    disp(sampleBoard)
    break
elseif  sampleBoard (1,1)=='O' & sampleBoard (2,5)=='O' & sampleBoard (3,8)=='O'
    fprintf('You lose!!!\n') 
    disp(sampleBoard)
    break
elseif  sampleBoard (1,8)=='O' & sampleBoard (2,5)=='O' & sampleBoard (3,1)=='O'
    fprintf('You lose!!!\n')   
    disp(sampleBoard)
    break
elseif i == 9 %this tells matlab to display you tie if there have been 9 moves without a win
    fprintf('You tie!!!\n') 
    break
end     
end



end
boxQuestion = 'Do you wish to play again?'; %this prompts the user to play again 
choice = questdlg(boxQuestion,boxPrompt,'Yes','No', 'Yes'); %gives the user a yes or no option to play, if no it thanks the user, if yess it runs the code from the top 
end
disp('Thanks for playing homie!')
