using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_Interface
{

    //Create Interface Using Interface Keyword.
     public interface ISavingAccount	
     {
      void PrintAccountData(); //Declare Method.
     }

    public interface ICurrentAccount
    {
     void PrintAccountData();
     }
      //Access one or more interface using (,) comma.
     public class Account: ISavingAccount, ICurrentAccount
     {

     void ISavingAccount.PrintAccountData()
     {
      Console.WriteLine("Saving account data.");
     }

     void ICurrentAccount.PrintAccountData()
     {
      Console.WriteLine("Current account data.");
     }
     }

    internal class Program
    {
        static void Main(string[] args)
        {

            ISavingAccount savingAccount = new Account();
            ICurrentAccount currentAccount = new Account();
            savingAccount.PrintAccountData();
            currentAccount.PrintAccountData();
            Console.ReadLine();

        }
    }
}
