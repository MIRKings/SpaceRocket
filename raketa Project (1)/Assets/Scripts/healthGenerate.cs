using UnityEngine;


public class healthGenerate : MonoBehaviour
{

    [SerializeField] private Health health;
    public AudioSource DestroyEnemy;
    private int healthCubMin = SaveControl.save.DamageAmount * 1;
    private int healthCubMax = SaveControl.save.DamageAmount * 3;



    public void Awake()
    {
        health.healt = health.maxHealth;

        if (gameObject.CompareTag("Enemy"))
        {
            var rnd = Random.Range(healthCubMin, healthCubMax);
            hpParams(rnd);

            if (health.healt <= 0 )
            {
                DestroyEnemy.Play();
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("amount"))
        {
            if (health.healt <=0)
            {
                DestroyEnemy.Play();
            }
        }
    }

    //метод для упрощения
    void hpParams(int rnd)
    {
        health.maxHealth = rnd;
        health.healt = health.maxHealth;
    }
}

