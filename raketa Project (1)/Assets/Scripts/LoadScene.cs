using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class LoadScene : MonoBehaviour
{
    public GameObject loadingScreen;
    public byte LevelScene;
    public Slider slider;

    //загрузка сцены
    public void LoadScenes(int Level)
    {
        loadingScreen.SetActive(true);
        Time.timeScale = 1f;
        StartCoroutine(LoadAsync());
    }

    IEnumerator LoadAsync()
    {
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(LevelScene);

        while (!asyncLoad.isDone)
        {
            slider.value = asyncLoad.progress;
            yield return null;
        }
    }
}
