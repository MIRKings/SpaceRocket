using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextHealth : MonoBehaviour
{
    [SerializeField] private TextMesh text;
    [SerializeField] private Health health;

    // Update is called once per frame
    void FixedUpdate()
    {
        text.text = FormatNumsHelp.FormatNum(health.healt);  //.ToString();
    }
}
