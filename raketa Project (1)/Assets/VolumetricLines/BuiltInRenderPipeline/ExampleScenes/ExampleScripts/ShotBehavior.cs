using UnityEngine;

public class ShotBehavior : MonoBehaviour
{
    private float speedAmount = 10f;
    public AudioSource EnemyBoom;

    [SerializeField] private GameObject explosionPrefab;
    /*  private void OnAwake()
      {
          explosionPrefab.GetComponent<ParticleSystem>().Play();
      }*/


    void Update()
    {

        transform.position += Vector3.up * Time.deltaTime * speedAmount;
    }

    private void OnTriggerEnter(Collider other)
    {
        //if (other.CompareTag("Enemy"))
        if (other.gameObject.GetComponent<healthGenerate>()!=null)
        {
            EnemyBoom.Play();

            Vector3 vector3 = new Vector3(transform.position.x, transform.position.y, transform.position.z);
            explosionPrefab = Instantiate(explosionPrefab, vector3, Quaternion.identity);

            Destroy(explosionPrefab, 1f);

            Destroy(gameObject);
        }
    }
}
