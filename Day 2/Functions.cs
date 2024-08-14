using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_2
{
    public class Functions
    {
        public static void run()
        {
            Console.WriteLine("We are Running ....");
        }

        public static int sum(int x, int y)
        {
            return x + y;
        }

        public static string name(string name1)
        {
            return "your name is " + name1;
        }

        static void Main(string[] args)
        {
            Functions.run();
            int result = Functions.sum(45,55);
            Console.WriteLine(result);
            Console.WriteLine(Functions.name("mayukhjit"));

            var name = "mayukhjit";
            var value1 = 12.56;
            var value2 = 'i';
            Console.WriteLine(name);

            // fixing a value to constant
            const int age = 23;
            value1 = 56.67;
            Console.WriteLine(age);


        }
    }
}
