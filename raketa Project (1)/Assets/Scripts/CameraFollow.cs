using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    #region  
    /* public GameObject player;
    private Vector3 vector3;
     private float runY;
     GameOver settings; 

     void Start()
     {
         vector3 = transform.position - player.transform.position;
         runY = transform.position.x;
     }

     void LateUpdate()
     {
         if (player)
         { transform.position = new Vector3(runY, player.transform.position.y, player.transform.position.z) + vector3; }
         else
         {
             settings.Setup();
         }
     }*/
#endregion


    [SerializeField]private GameObject[] player;//массив скинов 
    private Vector3 vector3;
    private float runY;
   

    private readonly GameOver settings;

    void Start()
    {
        SelectSki();
    }

    //метод выбора скина выбранного в магазине
    private void SelectSki()
    {
        if (gameObject.GetComponent<PlayerSettings>())
        {
            vector3 = transform.position - player[Shop._shop.SelectScin].transform.position.normalized;
            runY = transform.position.x;
        }
    }
    void LateUpdate()
    {
        dd();
    }

    void dd()
    {
        if (player[Shop._shop.SelectScin])// если игрок = выбранному скину
        { 
            transform.position = new Vector3
                (runY, player[Shop._shop.SelectScin].transform.position.y + 5,
                player[Shop._shop.SelectScin].transform.position.z - 10 ) - vector3;
        }
        else
        {
            settings.Setup();
        }
    }
}
