
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monami/controller/users/myfavoret_controller.dart';
import 'package:monami/core/constant/colorApp.dart';
import 'package:monami/data/model/myfavorite.dart';
import 'package:monami/linkapi.dart';

class CstmMyfavoriteprof extends GetView<MyFavoritecontroller> {
  final myfavoriteModel  myfavoritemodel;
  const CstmMyfavoriteprof( {super.key, required this.myfavoritemodel,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
                onTap: () {
                 
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            '${AppLink.imagesprof}/${myfavoritemodel.profImage}',
                                          ),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0),
                                      ),
                                      border: Border.all(
                                          color: AppColor.green, width: 1)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                             controller.gotoprofile2_0(myfavoritemodel);
                                          },
                                          child: Text(
                                            '${myfavoritemodel.profName}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: AppColor.black),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                      '${myfavoritemodel.profCuntry}',
                                    )
                                      ],
                                    ),
                                    Text(
                                      '${myfavoritemodel.profLang}',
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                        icon: const Icon(
                                          Icons.arrow_circle_right_outlined,
                                          size: 24, color: AppColor.buttommonami,
                                        ),
                                        onPressed: () {
                                        //  controller.gotoprofile2_0(profmodel);
                                        }),
                                    // Text('followers'),
                                  ],
                                ),
                         
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "${myfavoritemodel.profDesc}",
                          style: TextStyle(fontSize: 15, color: AppColor.black , ),
                        ),
                      ),
                          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                    
                         InkWell(onTap: () {
                          
                                  controller.deletFromFavorite(myfavoritemodel.favorieId!) ;
                              
                         },
                           child: Row(
                             children: [
                               Icon(
                                  Icons.favorite,
                                  color: AppColor.primaryColor,
                                ),
                                Text("followers"),
                             ],
                           ),
                         ), Center(
                    child: InkWell(
                      onTap: () {
                        // controller.gotoeditedata(
                        //     controller.data[index]);
                      },
                      child: Container(
                          // margin: EdgeInsets.only(top: 270),
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: AppColor.appelvideo,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                          ),
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Text(
                                    " Appel video ",
                                    style: TextStyle(
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Image(image: AssetImage("images/Vector.png"))
                                ],
                              ))),
                    ),
                  ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Image.asset('images/chat.png')),
                                
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                        height: 1,
                        color: AppColor.buttommonami,
                      )
                    ],
                  ),
                ),
              );
            
  }
}
