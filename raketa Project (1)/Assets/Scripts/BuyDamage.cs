using UnityEngine;
using UnityEngine.UI;

public class BuyDamage : MonoBehaviour
{
    private CollisionDamage collisionDamage;
    private SaveControl save;
    [SerializeField] private Text pricetxt;
    int prictxt = 5000;
    
    private void Start()
    {
        GameObject gameObject = GameObject.FindWithTag("GameManager");
        save = gameObject.GetComponent<SaveControl>();

        GameObject gameObjAmount = GameObject.FindWithTag("amount");// ищем 1 попавшийся объект с тегом 
        if (gameObjAmount != null)
        {
             collisionDamage = gameObjAmount.GetComponent<CollisionDamage>();// задаем скрипт который на неём лежит
            
        }

        if (save.priceScores == 0)
        {
            save.priceScores = prictxt;
            save.Save();
        }
        pricetxt.text = save.priceScores.ToString();

        if (save.DamageAmount == 0)
        {
            save.DamageAmount = collisionDamage.damage; // присваеваем значение 
            save.Save();
        }
        else collisionDamage.damage = save.DamageAmount;
       
    }

    public void BuyDamageUp()

    {
        if (save.ScoreSaves >= save.priceScores)
        {
            save.DamageAmount += 5;//добавление дамага

            save.ScoreSaves -= save.priceScores; //покупка 
            save.priceScores *= 2;//добавление цены на дамаг

            SpawnAsteroid.spawn.UpdateScore();//обновляем текст

            pricetxt.text = save.priceScores.ToString();

            save.Save();
          
        }
        else
        {
            pricetxt.text = "Недостаточно очков";
        }
    }



}
