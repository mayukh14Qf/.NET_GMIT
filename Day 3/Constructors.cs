using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_3
{

    class Marvel
    {
        public String MovieName;
        public String Collection;
        public int NoOfCharacters;

        // Deafult Constructor
        public Marvel()
        {
            Console.WriteLine("hello I am in default Constructor");
        }

        // parameterized constructors

        public Marvel(String MovieName, String Collection, int NoOfCharacters)
        {
            this.MovieName = MovieName;
            this.Collection = Collection;
            this.NoOfCharacters = NoOfCharacters;
            Console.WriteLine("In Parameterized contructors");
        }

        public Marvel(int f)
        {
            Console.WriteLine("your Fan Score is "+f);
        }


        // Copy Constructrors

        public Marvel(Marvel m)
        {
            this.MovieName=m.MovieName;
            this.Collection = m.Collection;
            this.NoOfCharacters=m.NoOfCharacters;
            Console.WriteLine("In Copy Constructor");
        }



        public void print()
        {
            Console.WriteLine(MovieName);
            Console.WriteLine(Collection);
            Console.WriteLine(NoOfCharacters);
        }

    }



    public class Constructors
    {
        static void Main(string[] args)
        {
            Marvel obj1= new Marvel();
            obj1.MovieName = "Avengers";
            obj1.NoOfCharacters = 50;
            obj1.Collection = "2B";
            obj1.print();

            Marvel obj2=new Marvel("Deadpool","1B",9);
            obj2.print();

            Marvel obj3 = new Marvel(6);

            Marvel obj4= new Marvel(obj1);
            obj4.print();

        }
    }
}
