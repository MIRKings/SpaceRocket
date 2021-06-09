using System;
using UnityEngine;

public class PlayerSettings : MonoBehaviour
{

    [SerializeField] private Health health;

    public Health Health { get { return health; } }

    private float rotSpeed = 9f; //150f;
    private float flySpeed = 8000;// скорость полета 



    private Rigidbody rigidBody;
    [SerializeField] private SaveControl saveControl;
    private Transform transforming;
    //Объявление переменной для управления пальцем
    [SerializeField] private SimpleTouchPad touchPad;

    [SerializeField] private Rigidbody PrefabRocket;

    public float tilt;//КООФИЦЕНТ НАКЛОНА ПО ОСИ Z;

    //звуки
    [Header("Sounds")]
    public AudioSource boomSource;
    public AudioSource helthSource;


    //левая граница //правая граница
    private readonly float LeftLimit = -2.5f;
    private readonly float RightLimit = 2.5f;

    private void Start()
    {
        rigidBody = GetComponent<Rigidbody>();
        Shop._shop.SelectScin = PlayerPrefs.GetInt("selectSC");

    }

    private void Update()
    {
        //граница для игрока 
        transform.position = new Vector3
            (
            Mathf.Clamp(transform.position.x, LeftLimit, RightLimit),//ставятся границы для правой и левой стены
            transform.position.y,
            transform.position.z
            );
    }

    private void FixedUpdate()
    {
        Vector2 direction = touchPad.GetDiriction();
        rigidBody.velocity = new Vector3(direction.x, 0f, direction.y) * rotSpeed;


        GetComponent<Rigidbody>().rotation = Quaternion.Euler
            (rigidBody.rotation.x,
            rigidBody.rotation.y + 180,
            rigidBody.velocity.x * tilt);//наклон ракетки 

        rigidBody.AddRelativeForce(Vector3.up * flySpeed * Time.deltaTime);/* AddRelativeForce*/

        int i = 500;
        int result = Convert.ToInt32(Math.Floor(PrefabRocket.transform.position.y));

        for (int c = 0; result > i; c++)
        {
            rigidBody.AddRelativeForce(Vector3.up * 40);
            i += 500;
            if (c == 6)
            {
                break;
            }
        }
    }

    //сбор монеток
    private void OnTriggerEnter(Collider collision)
    {

        if (collision.CompareTag("BuffHealth"))
        {
            Destroy(collision.gameObject);
            Health.SetHealth(20);
            helthSource.Play();
        }

        if (collision.CompareTag("Enemy"))
        {
            Destroy(collision.gameObject);
            boomSource.Play();
        }
    }
}


