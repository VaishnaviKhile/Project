using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;


namespace _4_HashTable
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Hashtable ht = new Hashtable();
            ht.Add("st01", "Tanjiro");
            ht.Add("st02", "Inosuke");
            ht.Add("sci01", "Newton");
            Console.WriteLine("Size of Hashtable is {0}", ht.Count);//total count of hashtable
            Console.WriteLine("Element with key = st01 is {0}", ht["st01"]);//ele with key


            Console.WriteLine("Removing element with key = st01");//remove selcted key item
            ht.Remove("st01");
            Console.WriteLine("Size of Hashtable is {0}", ht.Count);

            //Checking for the existence of a particular item in a hashtable
            Console.WriteLine(ht.ContainsKey("sci01"));//existing in hash table  //ture
            Console.WriteLine(ht.ContainsKey("st00"));//key is not in hash table    //false
            Console.WriteLine(ht.ContainsValue("Inosuke"));//true
            Console.ReadLine();



        }
    }
}
