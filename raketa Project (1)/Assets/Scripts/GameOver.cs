using GoogleMobileAds.Api;
using System.Collections;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    private BannerView bannerView;

#if UNITY_ANDROID
    private const string bannerUnitId = "ca-app-pub-3940256099942544/6300978111"; //тестовый айди
#elif UNITY_IPHONE
    private const string bannerUnitId = "";
#else
    private const string bannerUnitId = "unexpected_platform";
#endif
    void OnEnable()
    {
        bannerView = new BannerView(bannerUnitId, AdSize.Banner, AdPosition.Bottom);
        AdRequest adRequest = new AdRequest.Builder().Build();
        bannerView.LoadAd(adRequest);
        StartCoroutine(ShowBanner());
    }
    private void Awake()
    {
        MobileAds.Initialize(initStatus => { });
    }
    IEnumerator ShowBanner()
    {
        yield return new WaitForSecondsRealtime(3.0f);
        bannerView.Show();
    }

    public void Setup()
    {
        gameObject.SetActive(true);
    }
}

