using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_2
{
    public class arr
    {
        static void Main(String[] args)
        {
            int[] values = { 1, 2, 3, 4, 5 };
            int[] values1 = new int[4];

            string[] names = {"qwe","asx","ghy"};

            // forEach
            foreach (int item in values)
            {
                Console.WriteLine(item);
            }

            foreach (string item in names)
            {
                Console.WriteLine(item);
            }

        }
    }
}
