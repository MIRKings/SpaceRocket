using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartGame : MonoBehaviour
{
    //������ ������
    [SerializeField]private GameObject[] scins;

    private void Awake()
    {
        //Instantiate(scins[Shop._shop.SelectScin], Vector3.zero,Quaternion.identity).SetActive(true);
        //��������� ����� ���������� � �������� 
        scins[Shop._shop.SelectScin].SetActive(true);
    }
}
