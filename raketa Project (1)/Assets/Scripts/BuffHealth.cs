using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuffHealth : MonoBehaviour
{
    
    public Transform SpawnPos;
    public GameObject buff;
    private Vector3 _randomSpawnPos;


    void Start()
    {
        StartCoroutine(SpawnCD());
    }
    void Repeat()
    {
        StartCoroutine(SpawnCD());
    }

    IEnumerator SpawnCD()
    {
        yield return new WaitForSeconds(20f);
            _randomSpawnPos.x = _randomSpawnPos.x = SpawnPos.position.x + Random.Range(-2.6f, 2.6f);
            _randomSpawnPos.y = SpawnPos.position.y; //Позиция монеток по y = трансформу

            GameObject _go = GameObject.Instantiate(buff, _randomSpawnPos, Quaternion.identity) as GameObject;
        GameObject.Destroy(_go, 10f);    
        Repeat();
        
    }
}
