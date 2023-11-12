using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
 Abstract Class
*We can not create an object of Abstract Class . Throws an Error

// Abstract class/property/method defined with abstract keyword
    // it's used as base class and can not create an object. So must inherite
    // we can use access modifiers in the abstract class
    // abstract class can have abstract as well as non abstract members
    // method/property defined as an abstract must override in derived class
    // abstrct  method/property does not have a body.. Only declaration or signature is there in abstract class
    // variable can not used as an abstract


 
 */

namespace _1_AbstractClass
{
    abstract class Animal
    {
    public abstract void animalSound();
    public void sleep()
    {
        Console.WriteLine("Zzz");
    }
    }

    // Derived class (inherit from Animal)
    class Pig : Animal
    {
    public override void animalSound()
    {
        // The body of animalSound() is provided here
        Console.WriteLine("The pig says: wee wee");
    }
    }



internal class Program
    {
        static void Main(string[] args)
        {

            //Animal myObj = new Animal(); // Will generate an error (Cannot create an instance of the abstract class or interface 'Animal')
            Pig myPig = new Pig(); // Create a Pig object
            myPig.animalSound();  // Call the abstract method
            myPig.sleep();  // Call the regular method
            Console.ReadLine();


        }
    }
}
