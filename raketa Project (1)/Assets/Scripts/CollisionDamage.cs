using UnityEngine;

public class CollisionDamage : MonoBehaviour
{

    public static CollisionDamage Instance { get; set; }
    public int damage;
    public string collisionTag;

    public void Awake()
    {
        Instance = this;
    }

    public void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.CompareTag(collisionTag))
        {
            Health health = collision.gameObject.GetComponent<Health>();
            health.TakeHit(damage);
        }
    }
}
