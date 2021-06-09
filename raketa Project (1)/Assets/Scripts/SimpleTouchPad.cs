using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;


//***КОД ОТВЕЧАЮЩИЙ ЗА ТАЧПАД (СЕНСОРНОЕ УПРАВЛЕНИЕ) 
public class SimpleTouchPad : MonoBehaviour, IPointerDownHandler, IDragHandler, IPointerUpHandler
{
    private Vector2 origin;//хранит координаты нажатия на экран 
    private Vector2 direction;// хранит координаты направления в котором перемещен палец
    private Vector2 smoothDirection;
    public float smothing;


    private void Awake()
    {
        direction = Vector2.zero;
    }

    //функция нажатия на экран
    public void OnPointerDown( PointerEventData eventData)
    {
        //возвращение текущей позиции указателя
        origin = eventData.position;// присваеваем текущую позицию указателя 
    }

    //функция обработки перемещения по экрану
    public void OnDrag(PointerEventData eventData)
    {
        //текущая позиция
        Vector2 currentPosition = eventData.position;
        Vector2 directionRaw = currentPosition - origin;// currentPosition - origin
        direction = directionRaw.normalized;
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        direction = Vector2.zero;
    }

    public Vector2 GetDiriction (){
        smoothDirection = Vector2.MoveTowards(smoothDirection, direction, smothing);
        return smoothDirection;}
}
