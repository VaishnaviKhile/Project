using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

/*
// Constructor
1) It’s same name as a class name.
2)Syntax – public ConstrName() { }
3) It’s automatically called when object is created
4) It has no return type
5) It has access modifier
6) Below are the diff types
   1) Default
   2) Parameterized
   3) Copy Constructor 
   4) private
   5) static

Syntax

public class User
{
// Constructor
public User()
{
// Your Custom Code
}
}

*/


/*
 **Constructor Overloading
1)	We can overload constructor in c#.
2)	It can be done in same class.
3)	It can be achieved by 3 ways. 1) diff type of parameters 2) diff sequence 3) No of param 
*/


namespace _5_Constructor
{

    //1.Default Constructor
    // Default Constructor Demo 
    class User
    {
     public string name, location;

    // Default Constructor
    public User()
    {
        name = "Tanjiro";
        location = "Pune";
    }
}
    //2.Parameterized Constructor
    class UserP
    {
    public string name, location;
    // Parameterized Constructor
    public UserP(string a, string b)
    {
        name = a;
        location = b;
    }
    }

    //Constructor Overloading
    class UserO
    {
        public string name, location;
    // Default Constructor
    public UserO()
    {
        name = "Inosuke";
        location = "Katraj";
    }
    // Parameterized Constructor
    public UserO(string a, string b)
    {
        name = a;
        location = b;
    }
}

    //Constructor Chaining
    class UserC
    {
    public UserC()
    {
        Console.Write("Hi, ");
    }
    public UserC(string a): this()
    {
        Console.Write(a);
    }
    public UserC(string a, string b) : this("welcome")
    {
        Console.Write(a + " " + b);
    }
}



internal class Program
    {
        static void Main(string[] args)
        {
            // The constructor will be called automatically once the instance of the class created
            User user = new User();
            Console.WriteLine(user.name);
            Console.WriteLine(user.location);
            


               
                // The constructor will be called automatically once the instance of the class created
                UserP userP = new UserP("Zenitsu", "Pune");
                Console.WriteLine(userP.name);
                Console.WriteLine(userP.location);

            // Console.WriteLine("\nPress Enter Key to Exit..");

            UserO userO = new UserO(); // Default Constructor will be called
            UserO user1 = new UserO("rengoku", "Pune"); // Parameterized Constructor will be called
            Console.WriteLine(userO.name + ", " + userO.location);
            Console.WriteLine(user1.name + ", " + user1.location);

            //Constructor Chaining
            UserC userC = new UserC(" to", "NextGenration");
            Console.WriteLine();
            Console.WriteLine("\nPress Enter Key to Exit..");


            Console.ReadLine();


        }
    }
}
