using System;

namespace DotNet46.Console
{
    class Program
    {
        public static int Fibonacci(int n)
        {
            int a = 0;
            int b = 1;
            // In N steps compute Fibonacci sequence iteratively.
            for (int i = 0; i < n; i++)
            {
                int temp = a;
                a = b;
                b = temp + b;
            }
            return a;
        }

        static void Main()
        {
            int n;
            if (!int.TryParse(Environment.GetEnvironmentVariable("FIBONACCI_N"), out n))
                n = 15;

            for (int i = 0; i < n; i++)
            {
                System.Console.WriteLine(Fibonacci(i));
                System.Threading.Thread.Sleep(500);
            }
        }
    }
}
