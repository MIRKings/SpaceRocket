using UnityEngine;
using GoogleMobileAds.Api;
using System;

public class GeneralSsettings : MonoBehaviour
{

    [SerializeField] private GameOver gameOver;
    [SerializeField] private GameObject[] player;
    [Header("SAVED")]
    [SerializeField] private SaveControl saveControl;

    private void Start()
    {
        saveControl.Load();
   
    }
    private void LateUpdate()
    {

        if (!player[Shop._shop.SelectScin].activeSelf)
        { 
                Time.timeScale = 0f;
                gameOver.Setup();
        }
    }

   

}
