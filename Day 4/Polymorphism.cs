using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_4
{


    class Student
    {
        public int age;
        public string name;

        // Compile Time Poly (method overloading)

        public void Event()
        {
            Console.WriteLine("Event is Going On ....");
        }

        public void Event(int date)
        {
            Console.WriteLine("The Event Will be Happening on " + date);
        }


        public void Event(String name)
        {
            Console.WriteLine("The main Guest Is : "+name);
        }

        public int Event(int a,int b)
        {
            return a+b;
        }

        public virtual void Over()
        {
            Console.WriteLine("I am In Student Class");
        }

    }

    class ChildClass : Student
    {
        //public new void Over()
        //{
        //    Console.WriteLine("I am In Child Class");
        //}

        public override void Over()
        {
            Console.WriteLine("I am In Child Class");
        }
    }


    public class Polymorphism
    {
        static void Main(string[] args)
        {
            Student obj1= new Student();

            obj1.Event();
            obj1.Event(12);
            obj1.Event("RDJ");
            obj1.Event();

            obj1.Over();


            ChildClass cc= new ChildClass();

            cc.Event();
            cc.Over();

            // Method Over Riding

            Student s1 = new ChildClass();
            s1.Over();

        }
    }
}
