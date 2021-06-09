using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;


public class ShopVol : MonoBehaviour
{
    //������� ���������
    [SerializeField] private Image imageBut;
    [SerializeField] private Sprite[] spriteVOL;
    [SerializeField] private AudioMixerGroup aMixer;
   // [SerializeField] private Button ButSound;

    //����� ������
    private bool IsCheckVOLUME = true;
    private float volume;

    private void Start()
    {
        PlayerPrefs.GetFloat("MasterVolume", volume);
    }

    //����� ��� ����� ������ ��������� � ����/��� ���������
    public void ClickNoVOL()
    {
        if (IsCheckVOLUME)
        {
            volume = 1;
            imageBut.sprite = spriteVOL[0];
            IsCheckVOLUME = false;
            aMixer.audioMixer.SetFloat("MasterVolume", Mathf.Lerp(-80, 0, volume)); // ���������e ����� ����� � ����
        }
        else
        {
            volume = 0;
            imageBut.sprite = spriteVOL[1];
            IsCheckVOLUME = true;
            aMixer.audioMixer.SetFloat("MasterVolume", Mathf.Lerp(-80, 0, volume)); //����� ��� ����� ����� � ����
        }
    }
   
}