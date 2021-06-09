using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class loadscript : MonoBehaviour
{
    [Header("Загружаемая сцена")]
    public int sceneID;
    [Header("Остальные обьекты")]
    public TextMesh progresstext;
    
    void Start()
    {
        StartCoroutine(AsyncLoad());
        
        
    }

    IEnumerator AsyncLoad()
    {
        AsyncOperation operation = SceneManager.LoadSceneAsync(sceneID);
        while (!operation.isDone)
        {
            float progress = operation.progress / 0.9f;
            progresstext.text = string.Format("{0:0}%", progress * 100);
            yield return null;
        }

    }

    
    
}
