import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:project_test/checkout.dart';
import 'package:project_test/note.dart';
import 'package:project_test/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final note = ModalRoute.of(context)!.settings.arguments as Note;
    List<Widget> slider = [
      SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            note.image,
          ),
        ),
      ),
      SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            note.image,
          ),
        ),
      ),
      SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            note.image,
          ),
        ),
      ),
    ];

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: bluetext),
                        child: SvgPicture.asset(
                          'assets/icons/left.svg',
                          height: getHeight(12),
                          width: getWidth(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getWidth(15),
                    ),
                    Text(
                      'PRODUK DETAIL',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: bluetext,
                          fontSize: getWidth(16)),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => const Checkout());
                      },
                      child: SvgPicture.asset(
                        'assets/icons/cart1.svg',
                        height: getHeight(35),
                        width: getWidth(35),
                      ),
                    ),
                    SizedBox(
                      width: getWidth(10),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/notifications1.svg',
                        height: getHeight(35),
                        width: getWidth(35),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              CarouselSlider(
                items: slider,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  height: getHeight(187),
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _current = index;
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: getHeight(1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: slider.asMap().entries.map(
                  (entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: getWidth(30),
                        height: getHeight(8),
                        margin: EdgeInsets.symmetric(
                            vertical: getHeight(8), horizontal: getWidth(4)),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? lightblue
                                  : blue)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
              SizedBox(
                height: getHeight(35),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.elliptical(60, 60)),
                    color: red),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.elliptical(60, 60)),
                      color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tas Gucci',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, color: hijau),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                color: yellow,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text('Barang Bekas',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: getWidth(12))),
                          ),
                          SizedBox(
                            width: getWidth(10),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                color: bluetext,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text('Stok 100',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: getWidth(12))),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Rp 126.000',
                                style: TextStyle(
                                    color: bluetext,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              Text(
                                'Rp 100.500',
                                style: TextStyle(
                                    color: bluetext,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHeight(10),
                                vertical: getWidth(3)),
                            decoration: BoxDecoration(
                              color: lightblue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Diskon 10%',
                              style: TextStyle(
                                  fontSize: getWidth(13),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.1),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Vendor',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, color: hijau),
                              ),
                              SizedBox(
                                height: getHeight(8),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      'assets/images/brand.png',
                                      height: getHeight(40),
                                      width: getWidth(40),
                                    ),
                                  ),
                                  SizedBox(
                                    width: getWidth(15),
                                  ),
                                  Text(
                                    'Eiger Store',
                                    style: TextStyle(
                                        fontSize: getWidth(16),
                                        fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/icons/star.svg',
                            color: bluetext,
                            height: getHeight(20),
                            width: getWidth(20),
                          ),
                          SizedBox(
                            width: getWidth(5),
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(
                                color: lightblue, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            ' | ',
                            style: TextStyle(
                                color: lightblue, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '200 Terjual',
                            style: TextStyle(
                                color: lightblue, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Text(
                        'Deskripsi',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: hijau),
                      ),
                      SizedBox(
                        height: getHeight(5),
                      ),
                      Text(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: hijau),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Text(
                        'Ulasan dan Penilaian',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: hijau),
                      ),
                      SizedBox(
                        height: getHeight(15),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: shadowcart.withOpacity(0.15),
                              spreadRadius: 2,
                              blurRadius: 2,
                              // offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/user1.png',
                                  height: getHeight(40),
                                  width: getWidth(40),
                                ),
                                SizedBox(
                                  width: getWidth(18),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Maude Hall',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: getWidth(15)))),
                                    Text('14 min',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                color: abutext,
                                                fontWeight: FontWeight.w500,
                                                fontSize: getWidth(12))))
                                  ],
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  color: orange,
                                  height: getHeight(15),
                                  width: getWidth(15),
                                ),
                                SizedBox(
                                  width: getWidth(5),
                                ),
                                const Text(
                                  '5.0',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: getHeight(8),
                            ),
                            Text(
                              "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getHeight(10),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: shadowcart.withOpacity(0.15),
                              spreadRadius: 2,
                              blurRadius: 2,
                              // offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/user2.png',
                                  height: getHeight(40),
                                  width: getWidth(40),
                                ),
                                SizedBox(
                                  width: getWidth(18),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Ester Howard',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: getWidth(15)))),
                                    Text('14 min',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                                color: abutext,
                                                fontWeight: FontWeight.w500,
                                                fontSize: getWidth(12))))
                                  ],
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  color: orange,
                                  height: getHeight(15),
                                  width: getWidth(15),
                                ),
                                SizedBox(
                                  width: getWidth(5),
                                ),
                                const Text(
                                  '5.0',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: getHeight(8),
                            ),
                            Text(
                              "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
