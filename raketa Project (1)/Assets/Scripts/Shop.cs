using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;

public class Shop : MonoBehaviour
{
    public static Shop _shop;
    //Основные параметры
    [Header("Скины")]
    [SerializeField] private  GameObject[] scin;
    [HideInInspector]public  int SelectScin;

    [Header("Кнопки купить")]
    [SerializeField] private  GameObject[] buybut;
    [SerializeField] private  SaveControl saveControl;

    // игровые параметры 
    [Header("Монета")]
    [SerializeField] private  int[] price;
    [SerializeField] private  Text[] priceText;
    [SerializeField] private  Text CoinText;



    private void Start()
    {
    #if UNITY_ANDROID || UNITY_EDITOR
            saveControl.Load();
        CoinText.text = saveControl.ScoreSaves.ToString();
#endif
        Time.timeScale = 1f;
        _shop = this;
        
        SelectScin = PlayerPrefs.GetInt("selectSC");
        scin[SelectScin].SetActive(true);
   
        for (int i = 0; i < saveControl.isBuy.Length; i++)
        {
            if (saveControl.isBuy[i]==true)
            {
                priceText[i].text = null;
                buybut[i].SetActive(false);
            }
            else
                priceText[i].text = FormatNumsHelp.FormatNum(price[i]);


        }
    }

    //метод покупки скина
    public void BuyScin(int index)
    {
        if(saveControl.isBuy[index]==false)
        {
            if (saveControl.ScoreSaves >= price[index])
            {
                foreach (GameObject m in scin)
                {
                    m.SetActive(false);
                }
                //активация выбранного скина
                scin[index].SetActive(true);
                //Сохраняем значение isBuy в Json
                saveControl.isBuy[index] = true;
                saveControl.Save();
                //выключаем текст цены и кнопку купить
                priceText[index].text = null;
                buybut[index].SetActive(false);
                //вычитаем цену из основного баланса
                 saveControl.ScoreSaves -= price[index];
                //задаем значение текста баланса и сохраняем
                CoinText.text = saveControl.ScoreSaves.ToString();
                saveControl.Save();
            }
        }
      
    }

    //метод показа скина
    public void LoadAndSelectScin(int index)
    {
        foreach (GameObject m in scin)
        {
            m.SetActive(false);

        }
         scin[index].SetActive(true);

        if (saveControl.isBuy[index] == true)
        {
            SelectScin = index;
            PlayerPrefs.SetInt("selectSC", index);
            PlayerPrefs.Save();
        }
    }
}