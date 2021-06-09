using System;
using System.IO;
using UnityEngine;

public class SaveControl : MonoBehaviour
{
    public static SaveControl save { get; set; }
    [Header("Save Config")]
    [SerializeField] private string savePath;
    [SerializeField] private  string saveFileName = "SaveModels.json";

    [Header("Params")]
     public bool[] isBuy;
     public  int DamageAmount;//����� ����
     public int ScoreSaves;  //���������� ��� ���������� �����  
     public int priceScores; //������ �� ����


    private void Awake()
    {
#if UNITY_ANDROID && !UNITY_EDITOR

        savePath = Path.Combine(Application.persistentDataPath, saveFileName);
#else
        savePath = Path.Combine(Application.dataPath, saveFileName);
#endif
        Load();
        save = this;
    }

    private void OnApplicationQuit()
    {
        Save();
    }

    private void OnApplicationPause(bool pause)
    {
        //���� ��������� �������
        if (Application.platform == RuntimePlatform.Android)
        {
            Save();
        }
    }

    //����� ��������
    public void Load()
    {
        if (!File.Exists(savePath))
        {
            Debug.Log("{GameLog} => [GameCore] - Load -> (<color= red>FileNot Found</color>)");
            return;
        }

        try
        {
            string json = File.ReadAllText(savePath);

            Inventory inventory = JsonUtility.FromJson<Inventory>(json);

            this.isBuy = inventory.isBuy;        
            this.DamageAmount = inventory.DamageAmount;
            this.ScoreSaves = inventory. ScoreSaves;
            this.priceScores = inventory.priceScores;
        }
        catch (Exception e)
        {
            Debug.Log("{GameLog} => [GameCore] - Load -> (<color= red>FileNot Found</color>)" + e);

        }
    }

    //����� ����������
    public void Save()
    {
        Inventory inventory = new Inventory
        {
            isBuy = this.isBuy,            
            DamageAmount = this.DamageAmount,
            ScoreSaves = this.ScoreSaves,
            priceScores = this.priceScores,
        };
        string json = JsonUtility.ToJson(inventory, true);

        try
        {
            //������ ������ � json
            File.WriteAllText(savePath, json);
        }
        catch (Exception e)
        {
            Debug.Log("{GameLog} => [GameCore] - (<color= red>Error</color>)" + e);
        }
    }
}
//����� ��� ���������� ��������� �����
[System.Serializable]
public struct Inventory
{
    public bool[] isBuy;
    public int DamageAmount;
    public int ScoreSaves;
    public int priceScores;
}