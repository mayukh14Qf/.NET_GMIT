using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMIT_NET.Day_4
{
    class Emp
    {
        public int EmpPfNo;
        private int EmpId=2423;
        private string EmpName;

        public void SetEmpId(int EmpId)
        {
            if (EmpId > 0)
            {
                this.EmpId = EmpId;
            }
        }

        public int GetEmpId()
        {
            return this.EmpId;
        }

    }


    public class Encapsulation
    {
        static void Main(string[] args)
        {
            Emp obj1= new Emp();
            obj1.EmpPfNo = 1;
            obj1.SetEmpId(90);
            Console.WriteLine(obj1.GetEmpId());   

        }
    }
}
