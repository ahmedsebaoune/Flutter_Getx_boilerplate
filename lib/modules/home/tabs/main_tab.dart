import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:getwidget/getwidget.dart';

class MainTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var sc = SizeConfig();
    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
    ];


    return Container(
      child:  GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 6,
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.symmetric(
                  vertical: sc.blockSizeVertical,
                  horizontal: sc.blockSizeHorizontal),
              child: GFCard(
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  showOverlayImage: true,
                  imageOverlay:  Image.network(imageList[index]).image,

                  // title: GFListTile(
                  //   avatar: GFAvatar(),
                  //   titleText: 'Game Controllers',
                  //   subTitleText: 'PlayStation 4',
                  // ),
                  content: Text("Some quick example text to build on the card"),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      GFAvatar(
                        backgroundColor: GFColors.PRIMARY,
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                      GFAvatar(
                        backgroundColor: GFColors.SECONDARY,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      GFAvatar(
                        backgroundColor: GFColors.SUCCESS,
                        child: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
            ),
                        );

          },
          scrollDirection:Axis.vertical,

      )
    );
  }
}

