using System;

namespace sum_num
{
    class sum
    {
        static void Main(string[] args)
        {
            string data = Console.ReadLine();
            string[] numbers = data.Split(' ');
            int sum = 0;
            foreach (var sub in numbers)
            {
                sum += int.Parse(sub);
            }
            Console.WriteLine(sum);
            Console.ReadLine();
        }
    }
}