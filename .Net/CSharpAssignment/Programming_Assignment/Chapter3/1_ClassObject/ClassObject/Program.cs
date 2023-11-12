using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ClassObject
{
    //1)	Class – It’s a collection of properties, methods, indexers and business logic.

    //2)  Object – It’s an instance of class which exist in the real world.We can access all members using its object.

    //3.Using Multiple Class
    class Cars
    {
        public string color = "red";
    }

    //2.for Multiple Object
    class Car
    {

        //declare String 
       public String Company = "Tata";
       public string model = "Indica";
       public string color = "Red";


    }

    // 1. Single Class and object
    //declare class
    internal class Program
    {
        string color="red";
        static void Main(string[] args)
        {
            //1.Create  a object from class
            Program myObj = new Program();
            Console.WriteLine(myObj.color);


            //2.Multiple Objects
            //Create  a object from class
            Car myObj1 = new Car();
            Car myObj2 = new Car();
            Car myObj3 = new Car();

            Console.WriteLine(myObj1.Company);
            Console.WriteLine(myObj2.model);
            Console.WriteLine(myObj3.color);

            //3.for mutiple class
            Cars Obj = new Cars();
            Console.WriteLine(Obj.color);




            Console.ReadLine();





        }
    }
}
