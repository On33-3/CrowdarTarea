package lippia.web.services;

import com.crowdar.core.actions.ActionManager;
import lippia.web.constants.HomePageConstants;


public class HomePageService extends ActionManager {


    public static void clickShopMenuButton(){
        click(HomePageConstants.SHOP_MENU_BUTTON);

    }

    public static void clicksAnArrivalPicture(){
        click(HomePageConstants.IMAGE_ARRIVAL);
    }
}
