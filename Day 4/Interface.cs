using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_4
{
    interface X
    {
        void method1(); // public and abstract
        void method2();
    }

    interface I
    {
        void method1();
        void method3();
    }

    class Y : X, I
    {
         void X.method1()
        {
            Console.WriteLine("In Method 1 of X");
        }
        void I.method1()
        {
            Console.WriteLine("In Method 1 of I");
        }


        public void method2()
        {
            Console.WriteLine("In Methdod 2");
        }
        public void method3()
        {
            Console.WriteLine("In Methdod 3");
        }
    }
        public class Interface
        {

            static void Main(string[] args)
            {
                X obj1 = new Y();
                obj1.method1();
                obj1.method2();

            I  obj2 = new Y();
               obj2.method3();
            }
        }
    }

