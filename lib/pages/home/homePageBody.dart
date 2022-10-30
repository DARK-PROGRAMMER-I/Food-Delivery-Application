import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/controllers/popularProductsCtr.dart';
import 'package:food_delivery_app/controllers/recommended_product_ctr.dart';
import 'package:food_delivery_app/models/product_model.dart';
import 'package:food_delivery_app/pages/food/recommended_food_details.dart';
import 'package:food_delivery_app/pages/popularFood.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';
import 'package:get/get.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  double? pageValue = 0.0;

  @override
  void initState(){
    super.initState();
    print(Dimensions.pageWidth);
    pageController.addListener(() {
      setState(() {
        pageValue = pageController.page;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Slider Section
        GetBuilder<PopularProductsCtr>(builder: (popCtr){
          return Container(
            height: Dimensions.pageView,
            child: PageView.builder(
              controller: pageController,
              itemCount: popCtr.popProductList.length,
              itemBuilder: (context , position){
                return _buildPageItem(position, popCtr.popProductList[position]);
              },
            ),
          );
        }),
        // Dots
        GetBuilder<PopularProductsCtr>(
            builder: (popCtr){

              return DotsIndicator(
                dotsCount: popCtr.popProductList.length == 0 ? 1:popCtr.popProductList.length ,
                position: pageValue!,
                decorator: DotsDecorator(
                    activeColor: AppColors.mainColor,
                    size: Size.square(Dimensions.square8),
                    activeSize: Size(Dimensions.square20, Dimensions.square10),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                    )

                ),
              );
            }
        ),
        // polular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width20),
          child: Row(
            children: [
              BigText(name: 'Recommended'),
              SizedBox(width: Dimensions.width5,),
              Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: SmallText(name: '.' , size:15, color: Colors.black)),
              SizedBox(width: Dimensions.width5,),
              Container(
                  margin: EdgeInsets.only(top: 2),
                  child: SmallText(name: ' Food pricing'))
            ],
          ),
        ),
        SizedBox(height: Dimensions.height30,),
        // Items
         GetBuilder<RecommendedProductsCtr>(
             builder: (recProductList){

               return ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemCount: recProductList.recProductList.length == 0 ? 1 : recProductList.recProductList.length,
                   itemBuilder: (context , index){
                     return Container(
                       // height: Dimensions.height30,
                       margin: EdgeInsets.symmetric(horizontal: Dimensions.width20 ),
                       padding: EdgeInsets.only(bottom: Dimensions.height15),
                       child: Row(
                         children: [
                           // Image Section
                           Container(
                             width: Dimensions.width120,
                             height: Dimensions.height120,
                             decoration: BoxDecoration(
                                 color: AppColors.mainColor,
                                 borderRadius: BorderRadius.circular(Dimensions.radius25)
                             ),
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(Dimensions.radius25),
                               child: CachedNetworkImage(
                                 fit: BoxFit.cover,
                                 imageUrl: '${AppConstants.BASE_URL +'/uploads/' + recProductList.recProductList[index].img!}',
                                 placeholder: (context, url) =>
                                     Container(
                                       alignment: Alignment.center,
                                       child: CircularProgressIndicator(color: Colors.amber,),
                                     ),
                                 errorWidget: (context, url, error) => Icon(Icons.error),
                               ),
                             ),
                           ),
                           // Body of Container
                           Expanded(
                             child: GestureDetector(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (_)=> RecommendedFoodDetails()));
                               },
                               child: Container(
                                 // width: Dimensions.width210,
                                 height: Dimensions.height100,
                                 margin: EdgeInsets.only(left: Dimensions.width10),
                                 decoration: BoxDecoration(
                                   // color: Colors.orangeAccent,
                                     borderRadius: BorderRadius.only(
                                       topLeft: Radius.circular(Dimensions.radius20),
                                       bottomLeft: Radius.circular(Dimensions.radius20),
                                     )
                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.only(left: Dimensions.width10, top: Dimensions.height5),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       BigText(name: recProductList.recProductList[index].name!),
                                       SizedBox(height: Dimensions.height5,),
                                       SmallText(name: recProductList.recProductList[index].description!, ),
                                       SizedBox(height: Dimensions.height5,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           IconAndText(
                                             iconSize: Dimensions.icon20,
                                             icon: Icons.circle,
                                             text: 'Normal',
                                             iconColor: AppColors.yellowColor,

                                           ),
                                           IconAndText(
                                             iconSize: Dimensions.icon20,
                                             icon: Icons.place,
                                             text: '1.7km',
                                             iconColor: AppColors.mainColor,

                                           ),IconAndText(
                                             iconSize: Dimensions.icon20,
                                             icon: Icons.timer,
                                             text: '18mins',
                                             iconColor: Colors.redAccent,

                                           )
                                         ],
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           )
                         ],
                       ),
                     );
                   });
             }
         ),
      ],
    );
  }

  Widget _buildPageItem(int index , ProductModel popModel){

    double width10 = Dimensions.width10;
    return Stack(
          children: [
            Container(
                    height: Dimensions.pageViewContainer,
                    width: Dimensions.width320,
                    margin: EdgeInsets.only(left: width10 , right: width10),
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.purple : Colors.indigo,
                      borderRadius: BorderRadius.circular(Dimensions.radius25),

                    ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimensions.radius25),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: '${AppConstants.BASE_URL +'/uploads/' + popModel.img!}',
                  placeholder: (context, url) =>
                      Container(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(color: Colors.amber,),
                      ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Dimensions.pageCommentsConatiner,
                // width: 280,
                margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
                decoration: BoxDecoration(
                    color: AppColors.mainWhiteColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        // blurRadius: 5,
                        offset: Offset(5, 0)
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, 0)
                      ),
                    ]
                    ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> PopularFoodPage()));
                  },
                  child: Container(

                    padding: EdgeInsets.only(left: Dimensions.width15, right: Dimensions.width15, top: Dimensions.height15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(name: popModel.name!),
                        SizedBox(height: Dimensions.height20,),
                        Row(
                          children: [
                            Wrap(
                            children: List.generate(popModel.stars!, (index) => Icon(
                              Icons.star, color: AppColors.mainColor,size: Dimensions.height12,)),
                          ),
                            Wrap(
                              spacing: 5,
                              children: [
                                SizedBox(width: Dimensions.width5,),
                                SmallText(name: popModel.stars.toString(), size:  Dimensions.height12 ),

                                SmallText(name:'1287  comments', size:Dimensions.height12)
                              ],
                            )

                          ],
                        ),
                        SizedBox(height: Dimensions.height15,),
                        Wrap(

                          children: [ Row(
                            children: [
                              IconAndText(
                                  iconSize: Dimensions.height18,
                                  icon: Icons.circle,
                                  text: 'Normal',
                                  iconColor: AppColors.yellowColor,

                              ),
                              IconAndText(
                                  iconSize: Dimensions.height18,
                                  icon: Icons.place,
                                  text: '1.7km',
                                  iconColor: AppColors.mainColor,

                              ),IconAndText(
                                  iconSize: Dimensions.height18,
                                  icon: Icons.timer,
                                  text: '18mins',
                                  iconColor: Colors.redAccent,

                              )


                            ],
                          ),
                          ],),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
    );
  }
}
