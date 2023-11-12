/*
        0 | 1 | 2
        3 | 4 | 5
        6 | 7 | 8
*/


#include<iostream>
using namespace std;

string board[9]={" "," "," "," "," "," "," "," "," "};
int player=1;
int position=0;

void introduction()
{
    cout<<"Press [Enter] to begin: ";
    getchar();//hault screen
    cout<<"\n";

    cout<<"*****************\n";
    cout<<"Tic-Tac-Toe\n";
    cout<<"*****************\n";

    cout<<"Player 1) X\n";
    cout<<"Player 2) O\n";

    cout<<"The 3x3 grid is shown below:\n\n";

    cout<<"     |     |     \n";
    cout<<"  1  |  2  |  3  \n";
    cout<<"_____|_____|_____\n";
    cout<<"     |     |     \n";
    cout<<"  4  |  5  |  6   \n";
    cout<<"_____|_____|_____\n";
    cout<<"     |     |     \n";
    cout<<"  7  |  8  |  9  \n";
    cout<<"     |     |     \n\n";


}

// return if player winner
bool is_winner()
{
    bool winner=false;
  //checking rows
    if ((board[0]==board[1]) && (board[1]==board[2]) && (board[0]!=" "))
       { winner= true;}
        
    else if ((board[3]==board[4]) && (board[4]==board[5]) && (board[3]!=" "))
       { winner= true;}
    
     else if ((board[6]==board[7]) && (board[7]==board[8]) && ( board[6]!=" "))
        {winner= true;}  
        
        //checking columns

     else if ((board[0]==board[3]) && (board[3]==board[6]) && (board[0]!=" "))
        {winner= true;}
     else if ((board[1]==board[4]) && (board[4]==board[7]) && (board[1]!=" "))
        {winner= true;}
     else if ((board[2]==board[5]) && (board[5]==board[8]) && (board[2]!=" "))
        {winner= true;}

  //checking diagonal
    else if ((board[0]==board[4]) && (board[4]==board[8]) && (board[0]!=" "))
        {winner= true;}
     else if ((board[2]==board[4]) && (board[4]==board[6]) && (board[61]!=" "))
       { winner= true;}

     return winner;

}

// is board is filled or not 
bool filled_up()
{
   bool filled=true;

   for (int i = 0; i < 9; i++)
   {
      if (board[i]== " ")
      {
         filled= false;
      }
      
   }
   return filled;
}

//if display board after updating
void draw() 
{
   cout<<"     |     |     \n";
    cout<<"  "<<board[0]<<"  |  "<<board[1]<<"  |  "<<board[2]<<"  \n";
    cout<<"_____|_____|_____\n";
    cout<<"     |     |     \n";
    cout<<"  "<<board[3]<<"  |  "<<board[4]<<"  |  "<<board[5]<<"  \n";
    cout<<"_____|_____|_____\n";
    cout<<"     |     |     \n";
    cout<<"  "<<board[6]<<"  |  "<<board[7]<<"  |  "<<board[8]<<"  \n";
    cout<<"     |     |     \n\n";
}

//setting the position if no. is > 9
void set_position()
{
      cout<<"Player "<<player<<"'s (Enter:(1 - 9)):  ";
      
      //if position is > than 9
      while (!(cin>>position))
      {
         cout<<"please enter valid no. between (1-9)"<<endl;
         //flush or clear buffer
         cin.clear();
         cin.ignore();
      }
      
      cout<<endl;
      while (board[position-1]!=" ")
      {
         cout<<"Oh , that position is already filled\nTry again\n";
         cout<<"Player "<<player<<"'s Turn (Enter 1-9)";
         cin>>position;
         cout<<"\n";
      }
      
      
}

//update the board
void update_board(){
   if (player % 2 == 1) // for player 1
   {
      board[position-1]="X";
      
   }
   else                 // for player 2
   board[position-1]="O";
   
}
 
// to change player 
void change_player(){
   if (player==1){
      player++;
   }
   else
   player--;
   
}

//player turning from one to another  also check board is filled or not also check winning condition we gonna set the position also check if it is draw or not
void take_turn(){
   
   
   while (!filled_up())
   {
   
      if(is_winner())
      {
         cout<<"This for ur turn\n\n";
         set_position();
         update_board();
         change_player();
         draw();
      }
      else if (!is_winner())
      { 
         cout<<"Congrats, U win";
         break;
      }  
   }
   

}

void end_game(){
   if(is_winner())
   {
      cout<<"ConGraTuLaTion U win";
   }
   else if(filled_up())
   {
      cout<<"There is tie!";
   }
}

int main()
{

    introduction();
    take_turn();
    end_game();


    return 0;

}