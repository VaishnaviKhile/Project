﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TernaryOperator
{
    internal class Program
    {
        static void Main(string[] args)
        {

            int x = 5, y = 20;
            string result;
            //Ternary Operator (?:)
            result = (x > y) ? "x value greater than y" : "x value less than y";
            Console.WriteLine(result);

            Console.ReadLine();

        }
    }
}
