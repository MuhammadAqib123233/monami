import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:monami/core/class/statusrequest.dart';
import 'package:monami/core/constant/imagessets.dart';
import 'package:monami/view/widget/Skelton_Loading/NewCard.dart';
import 'package:monami/view/widget/Skelton_Loading/constants.dart';

class handlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const handlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return  statusRequest == StatusRequest.loading
        ?  Center(child: Lottie.asset(AppImageAsset.loading ,width: 250 ,height: 250))
        : statusRequest == StatusRequest.offlinefailute
            ? Center(child: Lottie.asset(AppImageAsset.noconnect ,width: 250 ,height: 250))
            : statusRequest == StatusRequest.serverfailute
                ? Center(child: Lottie.asset(AppImageAsset.server_errore_404 ,width: 250 ,height: 250))
                : statusRequest == StatusRequest.failute
                    ? Center(child: Lottie.asset(AppImageAsset.notdata ,width: 250 ,height: 250 ,))
            :         statusRequest == StatusRequest.getdata
      
            ? ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) =>  NewsCardSkelton(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: defaultPadding),
              )
        
                    : widget;
  }
}


        // if (controller.statusRequest == StatusRequest.loading) {
        //   return const Center(child: Text('loaging'));
        // } else if (controller.statusRequest == StatusRequest.offlinefailute) {
        //   return const Center(child: Text('offline  failute'));
        // } else if (controller.statusRequest == StatusRequest.serverfailute) {
        //   return const Center(child: Text('server  failute'));
        // }else if (controller.statusRequest == StatusRequest.failute) {
        //   return const Center(child: Text('not failute'));