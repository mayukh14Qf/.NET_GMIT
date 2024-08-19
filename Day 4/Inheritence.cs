using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_4
{


    class GrandFather
    {
        public int height;

        public void Skill()
        {
            Console.WriteLine("I have 2 Skills");
        }
    }

    class Father : GrandFather
    {
        public void abc()
        {
            Console.WriteLine("HE is Abc");
        }
    }

    class Child : Father
    {
        public void xyz()
        {
            Console.WriteLine("Welcome to xyz");
        }
    }


    public class Inheritence
    {
        static void Main(string[] args)
        {
            GrandFather gf1 = new GrandFather();
            gf1.Skill();
            

            Father f1= new Father();
            f1.Skill();
            f1.abc();

            Child c1= new Child();
            c1.abc();
            c1.Skill();


            GrandFather gf2 =new Father();
            //Father f2 = new GrandFather(); (This is not possible)

        }
    }
}
