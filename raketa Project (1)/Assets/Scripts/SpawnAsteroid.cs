using GoogleMobileAds.Api;
using System.Collections;
using UnityEngine;
using UnityEngine.UI;

public class SpawnAsteroid : MonoBehaviour
{
    public static SpawnAsteroid spawn { get; set; }

    [Header("Asteroid")]
    int[] selectkometa = { 1, 2, 3, 4, 5, 6, 7, 8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40 };
    public GameObject[] kometa;
    public Transform SpawnPosAsteroid;

    [Header("Spawn Values")]
    public Vector3 spawnValues;

    public int CubCount;
    public float spawnWait; //количество 
    public float startWait; //пауза перед началом
    public float waveWait; //пауза

    [Header("Text Score")]
    public Text scoreText;
    public Text Background;
    public Text recordCur;
    public Text moneyTXT;
    public int score;
    private RewardedAd rewardedAd;

#if UNITY_ANDROID
    private const string rewardedUnitId = "ca-app-pub-3940256099942544/5224354917"; //тестовый айди
#elif UNITY_IPHONE
    private const string rewardedUnitId = "";
#else
    private const string rewardedUnitId = "unexpected_platform";
#endif


    private void Start()
    {
        spawn = this;
        score = 0;
        UpdateScore();
        StartCoroutine(SpawnWaves());
    }

    IEnumerator SpawnWaves()
    {
        yield return new WaitForSeconds(startWait);
        while (true)
        {
            for (int i = 0; i < CubCount; i++)
            {
                Vector3 spawnPosition = new Vector3(spawnValues.x, SpawnPosAsteroid.position.y, spawnValues.z);
                Quaternion spawnRotation = Quaternion.identity;
                GameObject _go = GameObject.Instantiate(kometa[selectkometa[Random.Range(0, 39)]], spawnPosition, spawnRotation) as GameObject;
                yield return new WaitForSeconds(Random.Range(0.5f, spawnWait));
                GameObject.Destroy(_go, 10f);
            }
            yield return new WaitForSeconds(waveWait);
        }
    }

    public void UpdateScore()
    {
        scoreText.text = score.ToString();
        Background.text = $"Ваши очки: {FormatNumsHelp.FormatNum( SaveControl.save.ScoreSaves)}";// задаем общий рекорд очков
        recordCur.text = $"Тексущий рекорд: {score}";
        moneyTXT.text = FormatNumsHelp.FormatNum(SaveControl.save.ScoreSaves);

    }

    public void AddScore(int scorevalue)
    {
        score += scorevalue;
        SaveControl.save.ScoreSaves += scorevalue;// прибавляем очки к уже имеющимся
        SaveControl.save.Save();//сохраняем
        UpdateScore();
    }

    void OnEnable()
    {
        rewardedAd = new RewardedAd(rewardedUnitId);
        AdRequest adRequest = new AdRequest.Builder().Build();
        rewardedAd.LoadAd(adRequest);

        rewardedAd.OnUserEarnedReward += HandleUserEarnedReward;
    }
    void OnDisable()
    {
        rewardedAd.OnUserEarnedReward -= HandleUserEarnedReward;
    }

    public void HandleUserEarnedReward(object sender, Reward args)
    {
        score += score;

        SaveControl.save.ScoreSaves += score ;// прибавляем очки к уже имеющимся

        SaveControl.save.Save();//сохраняем

        UpdateScore();

    }

    public void ShowRewardedAd()
    {
        if (rewardedAd.IsLoaded())
        {
            rewardedAd.Show();
        }
    }
}


