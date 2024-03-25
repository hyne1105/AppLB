import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:labeaute/widgets/product_details_popup.dart';

class ProductDetailScreen extends StatelessWidget {
  List<String> images = List.generate(5, (index) => "images/image2.jpg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 380,
                    autoPlay: true,
                    imagesLink: images,
                    isAssets: true,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Son",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Son Bbia",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "180.000đ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFFC8273E),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Son BBIA mang đến cho bạn một sắc màu tinh tế, từ những tông màu nude dịu dàng đến những gam màu đậm cá tính, đảm bảo đáp ứng mọi nhu cầu trang điểm của bạn.",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0x1F989797),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFFC8273E),
                      ),
                    ),
                  ),
                  ProductDetailsPopUp(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
