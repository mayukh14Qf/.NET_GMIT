using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_2
{
    public class Loops
    {
        static void Main (String [] args)
        {
            // For

            for(int i = 0; i <= 10; i++)
            {
                Console.WriteLine(i);   
            }

            // while

            int j = 0;
            while(j <= 10)
            {
                Console.WriteLine(j);
                j++;
            }

            // ForEach

            string value = "Mayukhjit Chakraborty";

            for(int i = 0;i < value.Length;i++)
            {
                Console.Write(value[i]+" ");
            }

            Console.WriteLine();

            foreach (char i in value)
            {
                Console.WriteLine(i);
            }


        }
    }
}
