using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartGame : MonoBehaviour
{
    //массив скинов
    [SerializeField]private GameObject[] scins;

    private void Awake()
    {
        //Instantiate(scins[Shop._shop.SelectScin], Vector3.zero,Quaternion.identity).SetActive(true);
        //активация скина выбранного в магазине 
        scins[Shop._shop.SelectScin].SetActive(true);
    }
}
