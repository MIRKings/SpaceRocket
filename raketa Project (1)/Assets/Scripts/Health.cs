using UnityEngine;

public class Health : MonoBehaviour
{
    public int maxHealth;
    public int healt;
    public  int score;
    private SpawnAsteroid spawnAsteroid;

    public float CurrentHealth
    {
        get { return healt; }
    }

    private void Awake()
    {

        GameObject gameObjectAster = GameObject.FindWithTag("GameController");
        if (gameObjectAster != null)
        {
            spawnAsteroid = gameObjectAster.GetComponent<SpawnAsteroid>();
        }
    }

    private void Start()
    {
        score = healt;

        healt = maxHealth;
    }

    public void TakeHit(int damage)
    {
        healt -= damage;

        if (gameObject.CompareTag("Enemy"))
        {
            if (healt <= 0)
            {
                spawnAsteroid.AddScore(score);
            }
        }


        if (healt <= 0)
        {
            gameObject.SetActive(false);
            Destroy(gameObject, 3f);//уничтожение через 3 секунды послы скрытия  
        }
    }

    public void SetHealth(int Bonushealth)
    {

        healt += Bonushealth;

        if (healt > 100)
            healt = 100;
    }

}
