import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeBody());
  }
}

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);

  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final double _appBarHeight = 88;
  double _appBarOpacity = 0;
  void _onScroll(offset) {
    double opacity = offset / _appBarHeight;
    if (opacity < 0) {
      opacity = 0;
    } else if (opacity >= 1) {
      opacity = 1;
    }
    setState(() {
      _appBarOpacity = opacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        
        MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification && notification.depth == 0) {
              _onScroll(notification.metrics.pixels);
            }
            return notification is ScrollNotification && notification.depth == 0;
          },
          child: ListView(
            children: <Widget>[
              Container(
                child: Banner(),
                height: 200,
              ),
              Container(
                height: 1000,
                color: Colors.blue,
              )
            ],
          ),
        ),
        ),
        Opacity(
            opacity: _appBarOpacity,
            child: Container(
              padding: EdgeInsets.only(bottom: 14),
              alignment: Alignment.bottomCenter,
              color: Colors.white,
              height: _appBarHeight,
              child: Text("首页",style: TextStyle(fontSize: 18)),
            )),
      ],
    );
  }
}

class Banner extends StatefulWidget {
  Banner({Key key}) : super(key: key);

  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  final List<String> _bannerImgs = [
    "https://c-ssl.duitang.com/uploads/item/201604/12/20160412104326_Gw3ym.jpeg",
    "https://c-ssl.duitang.com/uploads/item/201604/12/20160412094534_4VFKi.jpeg",
    "https://c-ssl.duitang.com/uploads/blog/201403/20/20140320135645_YswQ8.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          _bannerImgs[index],
          fit: BoxFit.fill,
        );
      },
      itemCount: _bannerImgs.length,
      autoplay: true,
      pagination: SwiperPagination(),
    );
  }
}
