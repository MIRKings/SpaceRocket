using UnityEngine;
using System.Collections;

public class CannonBehavior : MonoBehaviour
{
    public Transform m_muzzle;
    public GameObject m_shotPrefab;

    void Start()
    {
        StartCoroutine(SpawnShot());
    }

    void Repeat()
    {
        StartCoroutine(SpawnShot());
    }

    IEnumerator SpawnShot()
    {
        yield return new WaitForSeconds(0.3f);//задержка спавна
        GameObject go = GameObject.Instantiate(m_shotPrefab, m_muzzle.position, m_muzzle.rotation) as GameObject;
        GameObject.Destroy(go, 1f);
        Repeat();
    }
}
