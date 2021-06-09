using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class VOLUMEVALUE : MonoBehaviour
{
    public AudioMixerGroup aMixer;
    public Slider master;
    public Slider music;
    public Slider effect;

    private void Start()
    {
       master.gameObject.GetComponentInChildren<Slider>().value= PlayerPrefs.GetFloat("MasterVolume", 1);
        music.gameObject.GetComponentInChildren<Slider>().value = PlayerPrefs.GetFloat("MusicParam", 1);
        effect.gameObject.GetComponentInChildren<Slider>().value = PlayerPrefs.GetFloat("EffectParam", 1);
    }

    public void ToggleMusic(float enabled)
    {
        aMixer.audioMixer.SetFloat("MusicParam", Mathf.Lerp(-80, 0, enabled));
        PlayerPrefs.SetFloat("MusicParam", enabled);
    }

    public void ChangeVolume(float volume)
    {
        aMixer.audioMixer.SetFloat("MasterVolume", Mathf.Lerp(-80,0,volume));
        PlayerPrefs.SetFloat("MasterVolume", volume);
    }

    public void ChangeEffect(float enabled)
    {
        aMixer.audioMixer.SetFloat("EffectParam", Mathf.Lerp(-80, 0, enabled));
        PlayerPrefs.SetFloat("EffectParam", enabled);
    }
}
