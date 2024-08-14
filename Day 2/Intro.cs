using System;

namespace GMIT_NET.Day_2
{
    public class Intro
    {
        static void Main(String[] args)
        { 
            Console.WriteLine("WELCOME TO DAY 2...");


            int number1 = 10;
            double number2 = 89.32;
            float float1 = 23.7F;
            char char1= 'A';
            String string1 = "mayukhjit14_%";
            bool check1= true;

            Console.WriteLine(number1);
            Console.WriteLine(number2);
            Console.WriteLine(char1);
            Console.WriteLine(string1);
            Console.WriteLine(check1);

            // Type Casting


            int number3 = Convert.ToInt32(number1);
            int number4 = (int)number2;
            
            Console.WriteLine(number3);
            Console.WriteLine(number4);

            int number5 = Convert.ToInt32(char1);
            Console.WriteLine(number5);

            // Implicit Conversion

            double number6 = 89;
            Console.WriteLine(number6);

            // Math Operator

            Console.WriteLine(Math.Min(12,45));
            Console.WriteLine(Math.Max(45,89));
            Console.WriteLine(Math.Abs(-98));
            Console.WriteLine(Math.Round(89.45));
            Console.WriteLine(Math.Pow(6,3));
            Console.WriteLine(Math.Sqrt(625));

            // operators

            Console.WriteLine(10!=11);
            Console.WriteLine(10 != 11 && 10 ==10) ;
            Console.WriteLine(10 != 11 && 10 == 10 && 10 !=10) ;
            Console.WriteLine(!((10 != 11 && 10 == 10)|| 10==10));

            // User Input

            Console.WriteLine("Enter Your Name :");
            string name1=Console.ReadLine();

            Console.WriteLine(name1);


            Console.WriteLine("Enter Your Age :");
            int age1=Convert.ToInt32(Console.ReadLine());

            Console.WriteLine(age1);


            // Conditional

            if (age1 % 2 == 0)
            {
                Console.WriteLine("Even Number");


            }
            else if (age1 %3==0)
            {
                Console.WriteLine("Divisible by 3");
            }
            else
            {
                Console.WriteLine("Odd Number");
            }

            // Ternary Operators

            string result = (age1 > 18) ? "Adult" : "Not Adult";
            Console.WriteLine(result);
            string result1 = (age1 > 12) ? ((age1 >= 13 && age1 <= 19) ? "teenager" : "adult") : "Child";
            Console.WriteLine(result1);



        }
    } 
}
