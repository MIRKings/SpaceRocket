using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    [SerializeField] private SaveControl saveControl;
    [SerializeField] private GameObject layout;
    [SerializeField] private GameObject pauseMenu;
    [SerializeField] private GameObject Player;
    [SerializeField] private GameObject Menu;

    // public static bool GameIsPaused = false;
    private void Start()
    {
        Time.timeScale = 0f;
    }

    //Закрытие приветсвенного окна
    public void CloseStartMenu()
    {
        layout.gameObject.SetActive(false);
        Time.timeScale = 1f;
        Player.gameObject.SetActive(true);
        saveControl.Load();
      
    }
    //Открытие меню паузы
    public void OnMouseDown()
    {
        pauseMenu.SetActive(true);
        Time.timeScale = 0f;
    }

    //кнопка продолжить
    public void OnMouseUp()
    {
        pauseMenu.gameObject.SetActive(false);
        Time.timeScale = 1f;
    }

    //выход из игры
    public void QuitGame()
    {
        Application.Quit();
    }

    //загрузка сцены
    public void LoadScene(int Level)
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene(Level, LoadSceneMode.Single);
    }
    //перезагрузка игры
    public void RestartB()
    {
        SceneManager.LoadScene(1);
    }

    public void SetMenu()
    {
        Menu.SetActive(false);
    }
    public void OpenSettingsMenu()
    {
        Menu.SetActive(true);
    }
}
