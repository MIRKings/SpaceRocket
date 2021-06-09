using UnityEngine;

public static class FormatNumsHelp
{
    private static string[] names =
    {
"",
"К",
"M",
"B"
  };
    //метод замены 4 значных чисел в К
    public static string FormatNum(float num)
    {
        if (num == 0) return "0";
        num = Mathf.Round(num);

        int i = 0;
        while (i + 1 < names.Length && num >= 1000)
        {
            num /= 1000;
            i++;
        }
        if (num<100000f)
        {
            return num.ToString("#.#") + names[i];
        }
        else
            return num.ToString("#") + names[i];

    }
}
