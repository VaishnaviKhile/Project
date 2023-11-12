using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _6_StringManipulation
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string firstname;
            string lastname;


            firstname = "Steven Clark";
            lastname = "Clark";

            Console.WriteLine(firstname.Contains("ven")); //Check whether specified value exists or not in string

            Console.WriteLine(" Returns the Length of String= " + firstname.Length);

            Console.WriteLine("Returns system type of string = " + firstname.GetType());


            Console.WriteLine("Returns type of string =" + firstname.GetTypeCode());

            Console.WriteLine("Covert string into lower case = " + firstname.ToLower());


            Console.WriteLine("Convert string into Upper case = " + firstname.ToUpper());


            Console.WriteLine("Replace the character r as i =" + firstname.Replace('e', 'i'));

            Console.WriteLine("Compare two string and returns true and false = " + firstname.Equals(lastname));
            Console.WriteLine("Compare 1st String With 2nd String +" + firstname.CompareTo(lastname));

            Console.WriteLine("Insert substring into string = " + firstname.Insert(0, "Hello"));

            Console.WriteLine(firstname.IndexOf("e"));

            Console.WriteLine("Returns the last index position of specified value = " + firstname.LastIndexOf("e"));


            Console.WriteLine("Deletes all the characters from begining to specified index = " + firstname.Remove(5));

            Console.WriteLine("it print String from index of 2 to 5 string like =" + firstname.Substring(2, 5));


            string ltrimName = "  Demo ";
            Console.WriteLine(" It removes starting and ending white spaces from = " + ltrimName.Trim());


            string[] split = firstname.Split(new char[] { 'e' }); //Split the string based on specified value


            Console.WriteLine(split[0]);
            Console.WriteLine(split[1]);
            Console.WriteLine(split[2]);

            Console.WriteLine(firstname.StartsWith("S")); //Check wheter first character of string is same as specified value

            Console.WriteLine("Converts an string into char array.= " + firstname.ToCharArray());
            foreach (char str in firstname)
            {
                Console.Write(" " + str);
            }

            Console.ReadLine();


        }
    }
}
