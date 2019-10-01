% Hannah Black
% 9/17/19
% This code is an interactive tic tac toe game between the user and the
% computer

%1.) Comment section at the top with your name, date and a short description of what your code does.
%2.) The program should begin with a welcome message and a prompt asking the user if they would like to play a game.
%3.) Show game board.
%4.) Prompt user for move.
%5.) Display updated game board.
%6.) Generate computer move.
%7.) Keep going until there is a winner or no more available moves.
%8.) Show final prompt with game result and a finishing message.
%9.) Once a space is taken, another player cannot move to that spot.
%10.) You may not use loops.
clear all
clc
fprintf = ('Welcome to Hannahs Tic Tac Toe Game')
boxPrompt= 'User Question';
boxQuestion = 'Do you wish to play?';
choice = questdlg(boxQuestion,boxPrompt,'Yes','cancel', 'Yes');
if choice == 'cancel'
    fprintf = ('okay bye!')
    return 
end 
fprintf = ('There are 9 spots to choose from, here is an example board')
sampleBoard = ['1 |' ' 2|' ' 3';'4 |' ' 5|' ' 6';'7 |' ' 8|' ' 9';];
disp(sampleBoard)
ticTacToeBoard = ['_ |' ' _|' ' _';'_ |' ' _|' ' _';'_ |' ' _|' ' _';];
x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
usedMoves = [ ];


if (x<1 | x>9)  
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose') % making sure the user uses an interger between 1-9
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
if floor(x)~=x
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose')
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
    fprintf = ('Game over, you lose!!!')
    return
end 
end 

% move 1 (person)
switch (x)
case 1
        ticTacToeBoard(1,1) = 'x';
    case 2
        ticTacToeBoard (1,5) = 'x';
    case 3
        ticTacToeBoard (1,7) = 'x';
    case 4
        ticTacToeBoard (2,1) = 'x';
    case 5
        ticTacToeBoard (2,5) = 'x';
    case 6
        ticTacToeBoard (2,7) = 'x';
    case 7 
        ticTacToeBoard (3,1) = 'x';
    case 8
        ticTacToeBoard (3,5) = 'x';
    case 9
        ticTacToeBoard (3,7) = 'x';
end


usedMoves= [usedMoves,x]; %storing used numbers to make sure the user doesnt pick the same move



% Move 2 (computer) (the computer basically looks for the first avalible
% spot to mov in 
if ticTacToeBoard (1,1) == '_';
    ticTacToeBoard (1,1) = 'O';
    cpuMove = (1)
elseif ticTacToeBoard (1,5) == '_';
        ticTacToeBoard (1,5) = 'O';
        cpuMove = (2)
elseif ticTacToeBoard (1,7) == '_';
        ticTacToeBoard (1,7) = 'O';
        cpuMove = (3)
elseif ticTacToeBoard (2,1) == '_';
        ticTacToeBoard (2,1) = 'O';
        cpuMove = (4)
elseif ticTacToeBoard (2,5) == '_';
        ticTacToeBoard (2,5) = 'O';  
        cpuMove = (5)
elseif ticTacToeBoard (2,7) == '_';
        ticTacToeBoard (2,7) = 'O';  
        cpuMove = (6)
elseif ticTacToeBoard (3,1) == '_';
        ticTacToeBoard (3,1) = 'O';  
        cpuMove = (7)
elseif ticTacToeBoard (3,5) == '_';
        ticTacToeBoard (3,5) = 'O'; 
        cpuMove = (8)
elseif ticTacToeBoard (3,7) == '_';
        ticTacToeBoard (3,7) = 'O';  
        cpuMove = (9)
end

usedMoves= [usedMoves,cpuMove]; %storing used numbers to make sure the computer doesnt pick the same move or a move thats already been used 

if ismember(cpuMove,usedMoves)
   cpuMove = randi([1,9]);
end
disp(ticTacToeBoard);

% move 3 (person)
x = input ('Make your next move, pick a spot on the board that isnt already taken: ')
if ismember(x,usedMoves)
    fprintf = ('This move is already taken, try again')
    x = input ('Make your move, pick a spot on the board that isnt already taken. If you chose another taken spot you lose.: ')
if ismember(x,usedMoves)
        fprintf = ('Game over, you lose')    
        return
  
end
end 

if (x<1 | x>9)  
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose') % making sure the user uses an interger between 1-9
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
if floor(x)~=x
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose')
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
    fprintf = ('Game over, you lose!!!')
    return
end 
end 

switch (x)
case 1
        ticTacToeBoard(1,1) = 'x';
    case 2
        ticTacToeBoard (1,5) = 'x';
    case 3
        ticTacToeBoard (1,7) = 'x';
    case 4
        ticTacToeBoard (2,1) = 'x';
    case 5
        ticTacToeBoard (2,5) = 'x';
    case 6
        ticTacToeBoard (2,7) = 'x';
    case 7 
        ticTacToeBoard (3,1) = 'x';
    case 8
        ticTacToeBoard (3,5) = 'x';
    case 9
        ticTacToeBoard (3,7) = 'x';
end

% move 4 (computer)
usedMoves= [usedMoves,x];
disp(ticTacToeBoard);

if ticTacToeBoard (1,1) == '_';
    ticTacToeBoard (1,1) = 'O';
    cpuMove = (1)
elseif ticTacToeBoard (1,5) == '_';
        ticTacToeBoard (1,5) = 'O';
        cpuMove = (2)
elseif ticTacToeBoard (1,7) == '_';
        ticTacToeBoard (1,7) = 'O';
        cpuMove = (3)
elseif ticTacToeBoard (2,1) == '_';
        ticTacToeBoard (2,1) = 'O';
        cpuMove = (4)
elseif ticTacToeBoard (2,5) == '_';
        ticTacToeBoard (2,5) = 'O';  
        cpuMove = (5)
elseif ticTacToeBoard (2,7) == '_';
        ticTacToeBoard (2,7) = 'O';  
        cpuMove = (6)
elseif ticTacToeBoard (3,1) == '_';
        ticTacToeBoard (3,1) = 'O';  
        cpuMove = (7)
elseif ticTacToeBoard (3,5) == '_';
        ticTacToeBoard (3,5) = 'O'; 
        cpuMove = (8)
elseif ticTacToeBoard (3,7) == '_';
        ticTacToeBoard (3,7) = 'O';  
        cpuMove = (9)
end

usedMoves= [usedMoves,cpuMove]; %storing used numbers to make sure the computer doesnt pick the same move or a move thats already been used 

if ismember(cpuMove,usedMoves)
   cpuMove = randi([1,9]);
end
disp(ticTacToeBoard);

% move 5 (person)
x = input ('Make your next move, pick a spot on the board that isnt already taken: ')
if ismember(x,usedMoves)
    fprintf = ('This move is already taken, try again')
    x = input ('Make your move, pick a spot on the board that isnt already taken. If you chose another taken spot you lose.: ')
if ismember(x,usedMoves)
        fprintf = ('Game over, you lose')    
        return
  
end
end 

if (x<1 | x>9)  
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose') % making sure the user uses an interger between 1-9
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
if floor(x)~=x
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose')
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
    fprintf = ('Game over, you lose!!!')
    return
end 
end 


switch (x)
case 1
        ticTacToeBoard(1,1) = 'x';
    case 2
        ticTacToeBoard (1,5) = 'x';
    case 3
        ticTacToeBoard (1,7) = 'x';
    case 4
        ticTacToeBoard (2,1) = 'x';
    case 5
        ticTacToeBoard (2,5) = 'x';
    case 6
        ticTacToeBoard (2,7) = 'x';
    case 7 
        ticTacToeBoard (3,1) = 'x';
    case 8
        ticTacToeBoard (3,5) = 'x';
    case 9
        ticTacToeBoard (3,7) = 'x';
end
disp(ticTacToeBoard);

% win check
if ticTacToeBoard (1,1)=='x' & ticTacToeBoard (2,1)=='x' & ticTacToeBoard (3,1)=='x'
    fprintf = ('You win!!!')
    return
elseif  ticTacToeBoard (1,5)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,5)=='x'
    fprintf = ('You win!!!')
    return
elseif  ticTacToeBoard (1,7)=='x' & ticTacToeBoard (2,7)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!')  
    return
elseif  ticTacToeBoard (1,1)=='x' & ticTacToeBoard (1,5)=='x' & ticTacToeBoard (1,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (2,1)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (2,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (3,1)=='x' & ticTacToeBoard (3,5)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (1,1)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (1,7)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,1)=='x'
    fprintf = ('You win!!!') 
return
end 
usedMoves= [usedMoves,cpuMove];

% move 6 (computer)
usedMoves= [usedMoves,x];
disp(ticTacToeBoard);

if ticTacToeBoard (1,1) == '_';
    ticTacToeBoard (1,1) = 'O';
    cpuMove = (1)
elseif ticTacToeBoard (1,5) == '_';
        ticTacToeBoard (1,5) = 'O';
        cpuMove = (2)
elseif ticTacToeBoard (1,7) == '_';
        ticTacToeBoard (1,7) = 'O';
        cpuMove = (3)
elseif ticTacToeBoard (2,1) == '_';
        ticTacToeBoard (2,1) = 'O';
        cpuMove = (4)
elseif ticTacToeBoard (2,5) == '_';
        ticTacToeBoard (2,5) = 'O';  
        cpuMove = (5)
elseif ticTacToeBoard (2,7) == '_';
        ticTacToeBoard (2,7) = 'O';  
        cpuMove = (6)
elseif ticTacToeBoard (3,1) == '_';
        ticTacToeBoard (3,1) = 'O';  
        cpuMove = (7)
elseif ticTacToeBoard (3,5) == '_';
        ticTacToeBoard (3,5) = 'O'; 
        cpuMove = (8)
elseif ticTacToeBoard (3,7) == '_';
        ticTacToeBoard (3,7) = 'O';  
        cpuMove = (9)
end

usedMoves= [usedMoves,cpuMove]; %storing used numbers to make sure the computer doesnt pick the same move or a move thats already been used 

if ismember(cpuMove,usedMoves)
   cpuMove = randi([1,9]);
end
disp(ticTacToeBoard);  

% win check
if ticTacToeBoard (1,1)=='O' & ticTacToeBoard (2,1)=='O' & ticTacToeBoard (3,1)=='O'
    fprintf = ('You lose!!!')
    return
elseif  ticTacToeBoard (1,5)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (3,5)=='O'
    fprintf = ('You lose!!!')
    return
elseif  ticTacToeBoard (1,7)=='O' & ticTacToeBoard (2,7)=='O' & ticTacToeBoard (3,7)=='O'
    fprintf = ('You lose!!!')
    return
elseif  ticTacToeBoard (1,1)=='O' & ticTacToeBoard (1,5)=='O' & ticTacToeBoard (1,7)=='O'
    fprintf = ('You lose!!!')   
    return
elseif  ticTacToeBoard (2,1)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (2,7)=='O'
    fprintf = ('You lose!!!')  
    return
elseif  ticTacToeBoard (3,1)=='O' & ticTacToeBoard (3,5)=='O' & ticTacToeBoard (3,7)=='O'
    fprintf = ('You lose!!!') 
    return
elseif  ticTacToeBoard (1,1)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (3,7)=='O'
    fprintf = ('You lose!!!') 
    return
elseif  ticTacToeBoard (1,7)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (3,1)=='O'
    fprintf = ('You lose!!!')   
return
end     


% move 7 (person)
x = input ('Make your next move, pick a spot on the board that isnt already taken: ')
if ismember(x,usedMoves)
    fprintf = ('This move is already taken, try again')
    x = input ('Make your move, pick a spot on the board that isnt already taken. If you chose another taken spot you lose.: ')
if ismember(x,usedMoves)
        fprintf = ('Game over, you lose')    
        return
  
end
end 

if (x<1 | x>9)  
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose') % making sure the user uses an interger between 1-9
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
if floor(x)~=x
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose')
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
    fprintf = ('Game over, you lose!!!')
    return
end 
end 


switch (x)
case 1
        ticTacToeBoard(1,1) = 'x';
    case 2
        ticTacToeBoard (1,5) = 'x';
    case 3
        ticTacToeBoard (1,7) = 'x';
    case 4
        ticTacToeBoard (2,1) = 'x';
    case 5
        ticTacToeBoard (2,5) = 'x';
    case 6
        ticTacToeBoard (2,7) = 'x';
    case 7 
        ticTacToeBoard (3,1) = 'x';
    case 8
        ticTacToeBoard (3,5) = 'x';
    case 9
        ticTacToeBoard (3,7) = 'x';
end
disp(ticTacToeBoard);

% win check
if ticTacToeBoard (1,1)=='x' & ticTacToeBoard (2,1)=='x' & ticTacToeBoard (3,1)=='x'
    fprintf = ('You win!!!')
    return
elseif  ticTacToeBoard (1,5)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,5)=='x'
    fprintf = ('You win!!!')
    return
elseif  ticTacToeBoard (1,7)=='x' & ticTacToeBoard (2,7)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!')  
    return
elseif  ticTacToeBoard (1,1)=='x' & ticTacToeBoard (1,5)=='x' & ticTacToeBoard (1,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (2,1)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (2,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (3,1)=='x' & ticTacToeBoard (3,5)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (1,1)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (1,7)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,1)=='x'
    fprintf = ('You win!!!') 
return
end 
usedMoves= [usedMoves,cpuMove];


% move 8 (computer)
usedMoves= [usedMoves,x];
disp(ticTacToeBoard);

if ticTacToeBoard (1,1) == '_';
    ticTacToeBoard (1,1) = 'O';
    cpuMove = (1)
elseif ticTacToeBoard (1,5) == '_';
        ticTacToeBoard (1,5) = 'O';
        cpuMove = (2)
elseif ticTacToeBoard (1,7) == '_';
        ticTacToeBoard (1,7) = 'O';
        cpuMove = (3)
elseif ticTacToeBoard (2,1) == '_';
        ticTacToeBoard (2,1) = 'O';
        cpuMove = (4)
elseif ticTacToeBoard (2,5) == '_';
        ticTacToeBoard (2,5) = 'O';  
        cpuMove = (5)
elseif ticTacToeBoard (2,7) == '_';
        ticTacToeBoard (2,7) = 'O';  
        cpuMove = (6)
elseif ticTacToeBoard (3,1) == '_';
        ticTacToeBoard (3,1) = 'O';  
        cpuMove = (7)
elseif ticTacToeBoard (3,5) == '_';
        ticTacToeBoard (3,5) = 'O'; 
        cpuMove = (8)
elseif ticTacToeBoard (3,7) == '_';
        ticTacToeBoard (3,7) = 'O';  
        cpuMove = (9)
end

usedMoves= [usedMoves,cpuMove]; %storing used numbers to make sure the computer doesnt pick the same move or a move thats already been used 

if ismember(cpuMove,usedMoves)
   cpuMove = randi([1,9]);
end
disp(ticTacToeBoard);  

% win check
if ticTacToeBoard (1,1)=='O' & ticTacToeBoard (2,1)=='O' & ticTacToeBoard (3,1)=='O'
    fprintf = ('You lose!!!')
    return
elseif  ticTacToeBoard (1,5)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (3,5)=='O'
    fprintf = ('You lose!!!') 
    return
elseif  ticTacToeBoard (1,7)=='O' & ticTacToeBoard (2,7)=='O' & ticTacToeBoard (3,7)=='O'
    fprintf = ('You lose!!!')  
    return
elseif  ticTacToeBoard (1,1)=='O' & ticTacToeBoard (1,5)=='O' & ticTacToeBoard (1,7)=='O'
    fprintf = ('You lose!!!')   
    return
elseif  ticTacToeBoard (2,1)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (2,7)=='O'
    fprintf = ('You lose!!!') 
    return
elseif  ticTacToeBoard (3,1)=='O' & ticTacToeBoard (3,5)=='O' & ticTacToeBoard (3,7)=='O'
    fprintf = ('You lose!!!')  
    return
elseif  ticTacToeBoard (1,1)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (3,7)=='O'
    fprintf = ('You lose!!!')  
    return
elseif  ticTacToeBoard (1,7)=='O' & ticTacToeBoard (2,5)=='O' & ticTacToeBoard (3,1)=='O'
    fprintf = ('You lose!!!')   
return
end     
 

% move 9 (person)
 x = input ('Make your next move, pick a spot on the board that isnt already taken: ')
if ismember(x,usedMoves)
    fprintf = ('This move is already taken, try again')
    x = input ('Make your move, pick a spot on the board that isnt already taken. If you chose another taken spot you lose.: ')
if ismember(x,usedMoves)
        fprintf = ('Game over, you lose')    
        return
  
end
end 

if (x<1 | x>9)  
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose') % making sure the user uses an interger between 1-9
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
if floor(x)~=x
    fprintf = ('Error, you must pick an integer 1-9, if you input another invalid cahracter you lose')
    x = input ('Make your move, pick a spot on the board 1:9 to make an x: ')
    fprintf = ('Game over, you lose!!!')
    return
end 
end 


switch (x)
case 1
        ticTacToeBoard(1,1) = 'x';
    case 2
        ticTacToeBoard (1,5) = 'x';
    case 3
        ticTacToeBoard (1,7) = 'x';
    case 4
        ticTacToeBoard (2,1) = 'x';
    case 5
        ticTacToeBoard (2,5) = 'x';
    case 6
        ticTacToeBoard (2,7) = 'x';
    case 7 
        ticTacToeBoard (3,1) = 'x';
    case 8
        ticTacToeBoard (3,5) = 'x';
    case 9
        ticTacToeBoard (3,7) = 'x';
end
disp(ticTacToeBoard);

% win check
if ticTacToeBoard (1,1)=='x' & ticTacToeBoard (2,1)=='x' & ticTacToeBoard (3,1)=='x'
    fprintf = ('You win!!!')
    return
elseif  ticTacToeBoard (1,5)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,5)=='x'
    fprintf = ('You win!!!')
    return
elseif  ticTacToeBoard (1,7)=='x' & ticTacToeBoard (2,7)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!')  
    return
elseif  ticTacToeBoard (1,1)=='x' & ticTacToeBoard (1,5)=='x' & ticTacToeBoard (1,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (2,1)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (2,7)=='x'
    fprintf = ('You win!!!')  
    return
elseif  ticTacToeBoard (3,1)=='x' & ticTacToeBoard (3,5)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!')
    return
elseif  ticTacToeBoard (1,1)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,7)=='x'
    fprintf = ('You win!!!') 
    return
elseif  ticTacToeBoard (1,7)=='x' & ticTacToeBoard (2,5)=='x' & ticTacToeBoard (3,1)=='x'
    fprintf = ('You win!!!') 
return
end 


fprintf = ('You tied the computer!')