using System;

namespace GMIT_NET.Day_3
{

    class Language
    {
        public string lName;

        public void lDescription()
        {
            Console.WriteLine("your language is : "+this.lName);
        }
    }


    class Student
    {
        // properties
        // instance variable
        public string name;
        public int rollNo;
        public string email;
        public static int age;

        // functions
        public void getData()
        {
            Console.WriteLine(this.name);
            Console.WriteLine(this.rollNo);
            Console.WriteLine(this.email);
            Console.WriteLine(age);
        }

        public string uniRollNo()
        {
            return "2024/"+this.rollNo;
        }

        public static void admission()
        {
            Console.WriteLine("your age during admission is : " + age);
            //Console.WriteLine(name); // we can not use non-static variable inside a static method
        }

    }

    public class oops
    {
        static void Main(string[] args)
        {
           Student obj1= new Student();// object creation

            Student.age = 23; // by calling the class name 
            Student.admission();

            obj1.name = "Mayukhjit";
            obj1.rollNo = 54;
            obj1.email = "mayukhc55@gmail.com";
            
            Console.WriteLine(obj1.uniRollNo());
            obj1.getData();

            Student obj2= new Student(); // obj2 => reference variable
            obj2.name = "xyz";
            obj2.rollNo = 14;
            obj2.email = "abc@gmail.com";
            obj2.getData();

            Language lan1= new Language();
            lan1.lName = "English";

            lan1.lDescription();

            

        }
    }
}
