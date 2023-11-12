using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1_Structure
{

    struct point
    {
    public double x;
    public double y;

    public point(int x, int y)
    {
        this.x = x;
        this.y = y;
    }
    public override string ToString()
    {
        //return base.ToString();
        return "(" + x + "," + y + ")";
    }
}

internal class Program
    {
        static void Main(string[] args)
        {
            point pt = new point();
            point pt1 = new point(15, 20);
            point pt2;
            pt2.x = 6;
            pt2.y = 3;

            Console.WriteLine("pt={0}", pt);
            Console.WriteLine("pt1={0}", pt1);
            Console.WriteLine("pt2={0}", pt2);

            Console.ReadLine();

        }
    }
}
