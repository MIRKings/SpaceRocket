
using System;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    [SerializeField] private Slider Health;
    private PlayerSettings player;

    private void Start()
    {
        player = FindObjectOfType<PlayerSettings>();
    }

    private void Update()
    {
        Health.value = player.Health.CurrentHealth;
    }

}
