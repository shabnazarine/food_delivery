import 'package:get/get.dart';

class Dimensions{
static double screenHeight = Get.context!.height;
static double screenWidth = Get.context!.width;

//scaling factor
static double pageView = screenHeight/2.64;
static double pageViewContainer = screenHeight/3.84;
static double pageViewTextContainer = screenHeight/6.03;

//Dynamic Height for padding and margin
static double height10 = screenHeight/84.4;
static double height15 = screenHeight/56.27;
static double height20 = screenHeight/42.2;
static double height30 = screenHeight/28.13;
static double height45 = screenHeight/18.76;

//Dynamic Width for padding and margin
static double width10 = screenHeight/84.4;
static double width15 = screenHeight/56.27;
static double width20 = screenHeight/42.2;
static double width30 = screenHeight/28.13;
static double width45 = screenHeight/18.76;

//font Size
static double font16 = screenHeight/52.75;
static double font20 = screenHeight/50;
static double font26 = screenHeight/32.46;

//radius
static double radius15 = screenHeight/56.27;
static double radius20 = screenHeight/42.2;
static double radius30 = screenHeight/28.13;

//Icon Size
static double iconSize = screenHeight/35.17;
static double smallIconSize = screenHeight/50;
static double iconSize16 = screenHeight/52.75;
static double iconSize26 = screenHeight/35.75;

//List View Size
static double listViewImageSize = screenWidth/3.25;
static double listViewTextContSize = screenWidth/3.29;

//Popular Food
static double popularFoodImgSize = screenHeight/2;
static double smallPopularFoodImgSize = screenHeight/2.5;

//Bottom Height
static double bottomHeightBar = screenHeight/7.03;
}