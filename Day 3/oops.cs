using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_3
{
    class father
    {
        public int age;
        public string name;

        public void identity()
        {
            Console.WriteLine($"your name is {this.name} and age is {this.age}");
        }
    }

    public class oops
    {
        static void Main(string[] args)
        {
            father obj1= new father();
            obj1.age = 45;
            obj1.name = "xyz";
            obj1.identity();
        }
    }
}
