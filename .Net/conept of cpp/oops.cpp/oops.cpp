/*constructor rule-it is also function
  1. no return type
  2.constructor has name as class belong to
  3.constructor must be public (if contructor is 
      private unable to create object)
  */
#include<iostream>
#include<string>
using  std::string;
using namespace std;
class employee{
    public:
       string name;
       string company;
       int age;
       void intro(){
           cout<<"name"<<name<<endl;
           cout<<"company"<<company<<endl;
           cout<<"age"<<age<<endl;
       }
      
      employee(){

      } 
};
int main(){
    employee em;
    em.name="v";
    em.intro();//default constructor callled

}