using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1_InheritanceNit_sTypes
{
    //** 1.Single Inheritance
    class Vehicle// base class (parent) 
    {
     public string brand = "Ford";  // Vehicle field
     public void honk()             // Vehicle method 
    {
        Console.WriteLine("Tuut, tuut!");
    }
    }
    class Car: Vehicle// derived class (child)
    {
    public string modelName = "Mustang";  // Car field
    }


    //** 2.Multilevel Inheritance
    public class Person
    {
    public void persondet()
    {
        Console.WriteLine("persondet method call");
    }
    }
    public class Bird: Person
    {
    public void birddet()
    {
        persondet();
        Console.WriteLine("this is the birddet Class");
    }
    }
    public class Animal: Bird
    {
    public void animaldet()
    {
        persondet();
        birddet();
        Console.WriteLine("this is the Animal Class");
    }
}



    //** 3.Hierarchical Inheritance
    class Father
    {
    public void display()
    {
        Console.WriteLine("Display...");
    }
    }
    class Son: Father
    {
    public void displayOne()
    {
        Console.WriteLine("Display One");
    }
    }
    class Daughter: Father
    {
    public void displayTwo()
    {
        Console.WriteLine("Display Two");
    }
}



internal class Program
    {
        static void Main(string[] args)
        {

            //1_Single Inheritance
            Car myCar = new Car(); // Create a myCar object

            // Call the honk() method (From the Vehicle class) on the myCar object
            myCar.honk();

            // Display the value of the brand field (from the Vehicle class) and the value of the modelName from the Car class
            Console.WriteLine(myCar.brand + " " + myCar.modelName);


            //** 2_Multilevel Inheritance
            Animal am = new Animal();
            am.animaldet();


            //** 3_Hierarchical Inheritance
            Father f = new Father();
            f.display();
            Son s = new Son();
            s.display();
            s.displayOne();
            Daughter d = new Daughter();
            d.display();
            d.displayTwo();


            Console.ReadLine();
        }


    }
}

