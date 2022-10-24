import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_test/theme.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool expand = false;
  bool expand1 = false;
  int valueCart = 1;
  int valueCart1 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      width: getWidth(20),
                    ),
                    Text(
                      'Checkout',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: bluetext,
                          fontSize: getWidth(16)),
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Slidable(
                  endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      extentRatio: 0.2,
                      children: [
                        CustomSlidableAction(
                          backgroundColor: const Color(0xffFCF8F8),
                          onPressed: (BuildContext context) {},
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bluetext,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                              child: SvgPicture.asset(
                                'assets/icons/delete.svg',
                                height: getHeight(20),
                                width: getWidth(20),
                              )),
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              spreadRadius: 2,
                              blurRadius: 5,
                              // offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.03),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    // offset: Offset(0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/item8.png',
                                height: getHeight(50),
                                width: getWidth(50),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(15),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Tas Eiger',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: getWidth(17)),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 3.5),
                                        decoration: BoxDecoration(
                                            color: lightblue,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: (() {
                                                if (valueCart > 0) {
                                                  setState(() {
                                                    valueCart--;
                                                  });
                                                }
                                              }),
                                              child: SizedBox(
                                                height: getHeight(20),
                                                width: getWidth(20),
                                                child: Icon(
                                                  Icons.remove,
                                                  color: white,
                                                  size: 16,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: getWidth(10),
                                            ),
                                            Text(valueCart.toString(),
                                                style: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: getWidth(15),
                                                        color: white))),
                                            SizedBox(
                                              width: getWidth(10),
                                            ),
                                            InkWell(
                                              onTap: (() {
                                                if (valueCart < 99) {
                                                  setState(() {
                                                    valueCart++;
                                                  });
                                                }
                                              }),
                                              child: SizedBox(
                                                height: getHeight(20),
                                                width: getWidth(20),
                                                child: Icon(
                                                  Icons.add,
                                                  color: white,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getHeight(8),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Rp 75.000',
                                        style: TextStyle(
                                            color: bluetext,
                                            fontWeight: FontWeight.w600,
                                            fontSize: getWidth(14)),
                                      ),
                                      const Spacer(),
                                      InkWell(
                                        onTap: (() {
                                          setState(() {
                                            expand = !expand;
                                          });
                                        }),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: bluetext,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.create_outlined,
                                                color: white,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: getWidth(5),
                                              ),
                                              Text('Catatan',
                                                  style: GoogleFonts.inter(
                                                      textStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize:
                                                              getWidth(15),
                                                          color: white)))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: expand,
                        child: Column(
                          children: [
                            SizedBox(
                              height: getHeight(10),
                            ),
                            AnimatedContainer(
                              padding: const EdgeInsets.all(14),
                              margin: EdgeInsets.only(bottom: getHeight(10)),
                              width: double.infinity,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.01),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    // offset: Offset(0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Catatan Item',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: getWidth(15),
                                      color: Colors.black.withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getHeight(10),
                                  ),
                                  TextField(
                                    maxLines: 5,
                                    minLines: 1,
                                    decoration: InputDecoration(
                                      hintText: 'Ketik disini...',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: abuoutline,
                                          fontSize: getWidth(14)),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: getWidth(1),
                                            color: abuoutline),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(15),
                ),
                Slidable(
                  endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      extentRatio: 0.2,
                      children: [
                        CustomSlidableAction(
                          backgroundColor: const Color(0xffFCF8F8),
                          onPressed: (BuildContext context) {},
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bluetext,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                              child: SvgPicture.asset(
                                'assets/icons/delete.svg',
                                height: getHeight(20),
                                width: getWidth(20),
                              )),
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              spreadRadius: 2,
                              blurRadius: 5,
                              // offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.03),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    // offset: Offset(0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                'assets/images/item7.png',
                                height: getHeight(50),
                                width: getWidth(50),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(15),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Tas Gucci',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: getWidth(17)),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 3.5),
                                        decoration: BoxDecoration(
                                            color: lightblue,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: (() {
                                                if (valueCart1 > 0) {
                                                  setState(() {
                                                    valueCart1--;
                                                  });
                                                }
                                              }),
                                              child: SizedBox(
                                                height: getHeight(20),
                                                width: getWidth(20),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.remove,
                                                    color: white,
                                                    size: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: getWidth(10),
                                            ),
                                            Text(valueCart1.toString(),
                                                style: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: getWidth(15),
                                                        color: white))),
                                            SizedBox(
                                              width: getWidth(10),
                                            ),
                                            InkWell(
                                              onTap: (() {
                                                if (valueCart1 < 99) {
                                                  setState(() {
                                                    valueCart1++;
                                                  });
                                                }
                                              }),
                                              child: SizedBox(
                                                height: getHeight(20),
                                                width: getWidth(20),
                                                child: Icon(
                                                  Icons.add,
                                                  color: white,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getHeight(8),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Rp 75.000',
                                        style: TextStyle(
                                            color: bluetext,
                                            fontWeight: FontWeight.w600,
                                            fontSize: getWidth(14)),
                                      ),
                                      const Spacer(),
                                      InkWell(
                                        onTap: (() {
                                          setState(() {
                                            expand1 = !expand1;
                                          });
                                        }),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: bluetext,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.create_outlined,
                                                color: white,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: getWidth(5),
                                              ),
                                              Text('Catatan',
                                                  style: GoogleFonts.inter(
                                                      textStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize:
                                                              getWidth(15),
                                                          color: white)))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: expand1,
                        child: Column(
                          children: [
                            SizedBox(
                              height: getHeight(10),
                            ),
                            AnimatedContainer(
                              padding: const EdgeInsets.all(14),
                              margin: EdgeInsets.only(bottom: getHeight(5)),
                              width: double.infinity,
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.01),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    // offset: Offset(0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Catatan Item',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: getWidth(15),
                                      color: Colors.black.withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getHeight(10),
                                  ),
                                  TextField(
                                    maxLines: 5,
                                    minLines: 1,
                                    decoration: InputDecoration(
                                      hintText: 'Ketik disini...',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: abuoutline,
                                          fontSize: getWidth(14)),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: getWidth(1),
                                            color: abuoutline),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 2,
                        blurRadius: 5,
                        // offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Catatan Pesanan',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: getWidth(15),
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(10),
                      ),
                      TextField(
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Ketik disini...',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: abuoutline,
                              fontSize: getWidth(14)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: getWidth(1), color: abuoutline),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                const Text(
                  'Detail Pembayaran',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: getHeight(8),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Tas Gucci',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '(Qty. 1)',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Rp 75.000',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(8),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Tas Eiger',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '(Qty. 1)',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Rp 75.000',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(8),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ongkos Kirim',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Rp 10.000',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sub Total',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      'Rp 450.000',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 14),
                    decoration: BoxDecoration(
                        color: lightblue,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Text(
                          'Waktu Pengantaran',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: getWidth(15),
                                color: white),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.navigate_next_outlined,
                          color: white,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 14),
                    decoration: BoxDecoration(
                        color: lightblue,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Text(
                          'Alamat Pengiriman',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: getWidth(15),
                                color: white),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.navigate_next_outlined,
                          color: white,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xffBC9F9F).withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          // offset: Offset(0, 0), // changes position of shadow
                        ),
                      ]),
                  child: Center(
                    child: Text(
                      'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.',
                      style: TextStyle(color: hijau),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(35),
                ),
                Center(
                  child: InkWell(
                    onTap: (() {}),
                    child: Container(
                      width: getWidth(285),
                      padding: EdgeInsets.symmetric(
                          horizontal: getWidth(17), vertical: getHeight(14)),
                      decoration: BoxDecoration(
                          color: lightblue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'Bayar Sekarang ',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: getWidth(22),
                                color: white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
