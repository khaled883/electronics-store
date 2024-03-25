import 'package:flutter/material.dart';

// this class is a model for the product data >>>
class Product{
  final int id;
  final int price;
  final String title;
  final String subTitle;
  final String description;
  final String image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}
  //product database list>>>>>>>>>>
  List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "AirPods",
    subTitle: "High definetion audio",
    image: "images/airpod.png",
    description:
        "Just take them out and they are ready to use with all your devices. Put them in your ears and they connect instantly. Speak into them and your voice sounds clear. Introducing AirPods. Simplicity and technology, together like never before. The result is completely magical.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "Mobile phone",
    subTitle: "Observe the strength",
    image: "images/mobile.png",
    description:
        "A new dual camera system captures more of what you see and love. The fastest chip ever in a smartphone and all day battery life let you do more and charge less. And the highest quality video in a smartphone, so your memories look better than ever.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "3D VR headset",
    subTitle: "To explore the vertual reality",
    image: "images/vr.png",
    description:
        "Improved Visual Experience Gaming and watching movies in 3D works best when proper your eyes properly align with the screen. That is why our 3D headset offers FD and OD adjustments to expand the viewing angle and perfectly match focal distance and unilateral myopic alignment for reduced distortion.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Head phones",
    subTitle: "For a better gaming experience",
    image: "images/headset.png",
    description:
        "The Digital Sound Enhancement Engine (DSEE) restores your music with high frequency and gradual fade out sound for a more authentic performance. You can even tailor to your own taste with EQ settings on the Sony | Headphones Connect app, for a personalised listening experience.360 Reality Audio Certified – optimise your experience by analysing your individual ear shape on the Sony | Headphones Connect app, and enjoy the ultimate immersive music experience.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "HD speaker",
    subTitle: "Everybody dance now",
    image: "images/speaker.png",
    description:
        "Get the best audio out of your computer / laptop setup with the ZEB-FAME 1 USB powered 2.0 speaker. It comes with a 3.5mm jack line input for convenient connectivity with your computer / laptop.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Web cam",
    subTitle: "Meet them now",
    image: "images/camera.png",
    description:
        "720p HD widescreen video - 720p sensor captures true HD quality video at up to 30 fps.",
  ),
];
