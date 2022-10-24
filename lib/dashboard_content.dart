import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_test/cartdetail.dart';
import 'package:project_test/note.dart';
import 'package:project_test/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardContent extends StatefulWidget {
  const DashboardContent({super.key});

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

List<Note> item = [
  Note(
    image: 'assets/images/item1.png',
  ),
  Note(
    image: 'assets/images/item2.png',
  ),
  Note(
    image: 'assets/images/item3.png',
  ),
  Note(
    image: 'assets/images/item4.png',
  ),
  Note(
    image: 'assets/images/item5.png',
  ),
  Note(
    image: 'assets/images/item6.png',
  ),
  Note(
    image: 'assets/images/item7.png',
  ),
  Note(
    image: 'assets/images/item8.png',
  )
];

var colors = {"blue": bluetext, "yellow": yellow, "bg": bg};

List<Map<String, String>> cartitem = [
  {
    'color': 'bg',
    'image': 'assets/images/item1.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
  {
    'color': 'blue',
    'image': 'assets/images/item2.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
  {
    'color': 'bg',
    'image': 'assets/images/item3.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
  {
    'color': 'bg',
    'image': 'assets/images/item4.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
  {
    'color': 'yellow',
    'image': 'assets/images/item5.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
  {
    'color': 'bg',
    'image': 'assets/images/item6.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
  {
    'color': 'bg',
    'image': 'assets/images/item7.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
  {
    'color': 'bg',
    'image': 'assets/images/item8.png',
    'harga': 'Rp 6.000',
    'harga1': 'Rp 4500',
    'diskon': 'Diskon 10%',
    'kategori': 'Lorem ipsum',
    'stackicon': 'assets/icons/star.svg',
    'stacktext': '5.0 | 200+ rating'
  },
];

int _current = 0;
final CarouselController _controller = CarouselController();

List<Widget> slider = [
  SizedBox(
    height: getHeight(200),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Image.asset(
        'assets/images/slider.png',
      ),
    ),
  ),
  SizedBox(
    height: getHeight(200),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Image.asset(
        'assets/images/slider.png',
      ),
    ),
  ),
  SizedBox(
    height: getHeight(200),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Image.asset(
        'assets/images/slider.png',
      ),
    ),
  ),
];

class _DashboardContentState extends State<DashboardContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(20), vertical: getHeight(20)),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
                    decoration: BoxDecoration(
                        color: abusearch,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Cari dengan mengetik barang',
                        hintStyle: TextStyle(
                          color: blacksearch.withOpacity(0.19),
                          fontSize: getWidth(11),
                        ),
                        icon: Icon(
                          Icons.search,
                          color: hijau,
                        ),
                        border: InputBorder.none,
                      ),
                      // style: TextStyle(color: search, fontSize: getWidth(11)),
                    ),
                  ),
                ),
                SizedBox(
                  width: getWidth(5),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  height: getHeight(35),
                  width: getWidth(35),
                  decoration: BoxDecoration(
                      color: blue, borderRadius: BorderRadius.circular(8)),
                  child: SvgPicture.asset(
                    'assets/icons/setting.svg',
                  ),
                ),
                SizedBox(
                  width: getWidth(8),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: getHeight(35),
                  width: getWidth(35),
                  decoration: BoxDecoration(
                      color: yellow, borderRadius: BorderRadius.circular(8)),
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/icons/cart.svg',
                    ),
                  ),
                ),
                SizedBox(
                  width: getWidth(8),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: getHeight(35),
                  width: getWidth(35),
                  decoration: BoxDecoration(
                      color: red, borderRadius: BorderRadius.circular(8)),
                  child: SvgPicture.asset(
                    'assets/icons/notifications.svg',
                  ),
                ),
                //
              ],
            ),
            SizedBox(
              height: getHeight(15),
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
                      height: getHeight(7),
                      margin: EdgeInsets.symmetric(
                          vertical: getHeight(8), horizontal: getWidth(4)),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? bluetext
                                : lightblue)
                            .withOpacity(_current == entry.key ? 1 : 0.5),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: getHeight(8),
            ),
            AlignedGridView.count(
                crossAxisCount: 2,
                itemCount: cartitem.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(
                        vertical: getHeight(10), horizontal: getWidth(8)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    shadowColor: const Color(0xffF9C6C6).withOpacity(0.25),
                    elevation: 0.5,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartItem(),
                              settings: RouteSettings(arguments: item[index]),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: getHeight(130),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color:
                                          colors["${cartitem[index]['color']}"],
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Image.asset(
                                    '${cartitem[index]['image']}',
                                    fit: BoxFit.cover,
                                    // fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Container(
                                  width: getWidth(105),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: getWidth(10),
                                      vertical: getHeight(3)),
                                  decoration: BoxDecoration(
                                    color: yellow,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        '${cartitem[index]['stackicon']}',
                                        height: getHeight(10),
                                        width: getWidth(10),
                                      ),
                                      SizedBox(
                                        width: getWidth(2),
                                      ),
                                      Text(
                                        '${cartitem[index]['stacktext']}',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getHeight(5),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${cartitem[index]['harga']}',
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: bluetext,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                    ),
                                    Text(
                                      '${cartitem[index]['harga1']}',
                                      style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: bluetext,
                                              fontWeight: FontWeight.w800)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: getHeight(10),
                                      vertical: getWidth(4)),
                                  decoration: BoxDecoration(
                                    color: lightblue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '${cartitem[index]['diskon']}',
                                    style: TextStyle(
                                        fontSize: getWidth(9),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: getHeight(3),
                            ),
                            Text(
                              '${cartitem[index]['kategori']}',
                              style: TextStyle(
                                fontSize: getWidth(15),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ]),
        ),
      ),
    ));
  }
}
