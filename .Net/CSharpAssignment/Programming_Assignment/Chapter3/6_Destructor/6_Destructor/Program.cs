using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*

 Destructor -It’s special kind of method which is called when object supposed to be release a memory/destroy or it’s no more use in the program.

•	Destructors (~) cannot be defined in Structs.
•	Destructors (~) are only used with classes.
•	Destructor cannot be inherited or overloaded.
•	Destructor does not take modifiers or have parameters.
•	Destructor cannot be called. They are invoked automatically.
•	An instance becomes eligible for destruction when it is no longer possible for any code to use the instance.
•	The Programmer has no control over when destructor is called because this is determined by Garbage Collector.
•	Destructor is called when program exits.
•	Execution of the destructor for the instance may occur at any time after the instance becomes eligible for destruction.
•	Destructor implicitly calls Finalize on the base class of object.

 */

namespace _6_Destructor
{
    public class Employee
    {
    public Employee()
    {
        Console.WriteLine("Constructor Invoked");
    }
    ~Employee()
    {
        Console.WriteLine("Destructor Invoked");
        Console.ReadLine();
    }
}

internal class Program
    {
        static void Main(string[] args)
        {
            Employee e1 = new Employee();
            Employee e2 = new Employee();
            Console.ReadLine();

        }
    }
}
