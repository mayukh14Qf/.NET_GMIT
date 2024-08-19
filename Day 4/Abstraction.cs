using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_4
{

    abstract class A
    {
        public void run()
        {
            Console.WriteLine("I am Running");
        }

        public abstract void Watch();

    }

    class B : A
    {
        public override void Watch()
        {
            Console.WriteLine("I am Watching netflix");
        }   
    }

    class C : A
    {
        public override void Watch()
        {
            Console.WriteLine("I am Watching Amazon");
        }
    }



    public class Abstraction
    {
        static void Main(string[] args)
        {
            A obj1 = new B();
            obj1.run();
            obj1.Watch();

            A obj3= new C();
            obj3.Watch();


            //B obj2 =new B();
            //obj2.run();
            //obj2.Watch();



        }
    }
}
