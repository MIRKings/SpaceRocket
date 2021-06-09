using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moveobject : MonoBehaviour
{
    [SerializeField] Vector3 movePosition;
    [SerializeField] float movespeed;
    [SerializeField] [Range(0,1)] float moveProgress; // 0 - 1 = обьект не двигался 1 = обьект полностью сдвинулся
    Vector3 startPosition;
    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
        
    }

    // Update is called once per frame
    void Update()
    {
        moveProgress = Mathf.PingPong(Time.time*movespeed,1);//цикличность
        Vector3 offset = movePosition * moveProgress;// moveprogress = 0.5 - 50% offset = movePosition * 0.5 = 10
        transform.position = startPosition + offset;
        
    }
}
