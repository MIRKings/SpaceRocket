using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;

public class Shop : MonoBehaviour
{
    public static Shop _shop;
    //�������� ���������
    [Header("�����")]
    [SerializeField] private  GameObject[] scin;
    [HideInInspector]public  int SelectScin;

    [Header("������ ������")]
    [SerializeField] private  GameObject[] buybut;
    [SerializeField] private  SaveControl saveControl;

    // ������� ��������� 
    [Header("������")]
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

    //����� ������� �����
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
                //��������� ���������� �����
                scin[index].SetActive(true);
                //��������� �������� isBuy � Json
                saveControl.isBuy[index] = true;
                saveControl.Save();
                //��������� ����� ���� � ������ ������
                priceText[index].text = null;
                buybut[index].SetActive(false);
                //�������� ���� �� ��������� �������
                 saveControl.ScoreSaves -= price[index];
                //������ �������� ������ ������� � ���������
                CoinText.text = saveControl.ScoreSaves.ToString();
                saveControl.Save();
            }
        }
      
    }

    //����� ������ �����
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