using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace _1_ArrayList
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ArrayList arrlst = new ArrayList(10);
            arrlst.Add("Rengoku");
            arrlst.Add(10);
            arrlst.Add(10.00);
            arrlst.Add("Kyojuro");
            arrlst.Add(11);
            arrlst.Add(15.00);

            int cap = arrlst.Capacity;
            int cnt = arrlst.Count;
            Console.WriteLine("Array List Capacity=" + cap);//array list cacacity
            Console.WriteLine("Array List Count=" + cnt);//count array
            arrlst.Remove(11);  //remove Selected item in array list
                                //arrlst.Clear();   //USE for clear array list
            Console.WriteLine("Index of  Cena in array list=" + arrlst.IndexOf("Cena"));//show selectd item index
            arrlst.Insert(3, "Micky"); //insert item at specific index in array list
            foreach (var val in arrlst)
            {
                Console.WriteLine(val);
            }




            Console.ReadLine();

        }
    }
}
