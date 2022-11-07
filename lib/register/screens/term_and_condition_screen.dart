import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sephore/register/widgets/sephora_app_bar.dart';
import 'package:sephore/register/widgets/succes_dialog.dart';

class TermAndConditionScreen extends StatelessWidget {
  const TermAndConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FD),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SephoraAppBar(title: 'Syarat & Ketentuan'),
                  const SizedBox(height: 34),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFDAE9FF),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Icon(
                                    Icons.check_box_outlined,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Persetujuan',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Baca dan pahami syarat & ketentuan pada di bawah ini',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(height: 40),
                            const SizedBox(height: 20),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ExpandablePanel(
                                      header: const Text(
                                        'Loraem ipsum',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      theme: const ExpandableThemeData(
                                        alignment: Alignment.center,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                      ),
                                      collapsed: const Text(
                                        'Lorem ipsum dolor sit amet, '
                                        'consectetur adipiscing elit.',
                                        softWrap: true,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                      expanded: const Text(
                                        'Lorem ipsum dolor sit amet,'
                                        ' consectetur adipiscing elit. '
                                        'In nibh massa arcu elementum sed'
                                        ' feugiat. Purus fringilla iaculis'
                                        ' turpis mattis in feugiat'
                                        ' ullamcorper turpis in. '
                                        'Pellentesque purus, blandit erat '
                                        'proin laoreet quis. Amet enim, '
                                        'hendrerit pellentesque nunc '
                                        'posuere. Mauris ac purus eu '
                                        'congue. Tincidunt risus at '
                                        'elementum orci nisl vivamus sed.'
                                        ' Duis facilisis massa morbi nisl. '
                                        'Facilisis volutpat nulla aliquet '
                                        'eu id bibendum feugiat vulputate '
                                        'diam. Sed ultricies phasellus '
                                        'lectus non massa facilisis massa.',
                                        softWrap: true,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ExpandablePanel(
                                      header: const Text(
                                        'Loraem ipsum',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      theme: const ExpandableThemeData(
                                        alignment: Alignment.center,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                      ),
                                      collapsed: const Text(
                                        'Lorem ipsum dolor'
                                        ' sit amet, consectetur'
                                        ' adipiscing elit.',
                                        softWrap: true,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                      expanded: const Text(
                                        'Lorem ipsum dolor sit amet,'
                                        ' consectetur adipiscing elit. '
                                        'In nibh massa arcu elementum sed'
                                        ' feugiat. Purus fringilla iaculis'
                                        ' turpis mattis in feugiat'
                                        ' ullamcorper turpis in. '
                                        'Pellentesque purus, blandit erat '
                                        'proin laoreet quis. Amet enim, '
                                        'hendrerit pellentesque nunc '
                                        'posuere. Mauris ac purus eu '
                                        'congue. Tincidunt risus at '
                                        'elementum orci nisl vivamus sed.'
                                        ' Duis facilisis massa morbi nisl. '
                                        'Facilisis volutpat nulla aliquet '
                                        'eu id bibendum feugiat vulputate '
                                        'diam. Sed ultricies phasellus '
                                        'lectus non massa facilisis massa.',
                                        softWrap: true,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ExpandablePanel(
                                      header: const Text(
                                        'Loraem ipsum',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      theme: const ExpandableThemeData(
                                        alignment: Alignment.center,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                      ),
                                      collapsed: const Text(
                                        'Lorem ipsum dolor '
                                        'sit amet, consectetur '
                                        'adipiscing elit.',
                                        softWrap: true,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                      expanded: const Text(
                                        'Lorem ipsum dolor sit amet,'
                                        ' consectetur adipiscing elit. '
                                        'In nibh massa arcu elementum sed'
                                        ' feugiat. Purus fringilla iaculis'
                                        ' turpis mattis in feugiat'
                                        ' ullamcorper turpis in. '
                                        'Pellentesque purus, blandit erat '
                                        'proin laoreet quis. Amet enim, '
                                        'hendrerit pellentesque nunc '
                                        'posuere. Mauris ac purus eu '
                                        'congue. Tincidunt risus at '
                                        'elementum orci nisl vivamus sed.'
                                        ' Duis facilisis massa morbi nisl. '
                                        'Facilisis volutpat nulla aliquet '
                                        'eu id bibendum feugiat vulputate '
                                        'diam. Sed ultricies phasellus '
                                        'lectus non massa facilisis massa.',
                                        softWrap: true,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ExpandablePanel(
                                      header: const Text(
                                        'Loraem ipsum',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      theme: const ExpandableThemeData(
                                        alignment: Alignment.center,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                      ),
                                      collapsed: const Text(
                                        'Lorem ipsum dolor sit amet, '
                                        'consectetur adipiscing elit.',
                                        softWrap: true,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                      expanded: const Text(
                                        'Lorem ipsum dolor sit amet,'
                                        ' consectetur adipiscing elit. '
                                        'In nibh massa arcu elementum sed'
                                        ' feugiat. Purus fringilla iaculis'
                                        ' turpis mattis in feugiat'
                                        ' ullamcorper turpis in. '
                                        'Pellentesque purus, blandit erat '
                                        'proin laoreet quis. Amet enim, '
                                        'hendrerit pellentesque nunc '
                                        'posuere. Mauris ac purus eu '
                                        'congue. Tincidunt risus at '
                                        'elementum orci nisl vivamus sed.'
                                        ' Duis facilisis massa morbi nisl. '
                                        'Facilisis volutpat nulla aliquet '
                                        'eu id bibendum feugiat vulputate '
                                        'diam. Sed ultricies phasellus '
                                        'lectus non massa facilisis massa.',
                                        softWrap: true,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ExpandablePanel(
                                      header: const Text(
                                        'Loraem ipsum',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      theme: const ExpandableThemeData(
                                        alignment: Alignment.center,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                      ),
                                      collapsed: const Text(
                                        'Lorem ipsum dolor sit amet, '
                                        'consectetur adipiscing elit.',
                                        softWrap: true,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                      expanded: const Text(
                                        'Lorem ipsum dolor sit amet,'
                                        ' consectetur adipiscing elit. '
                                        'In nibh massa arcu elementum sed'
                                        ' feugiat. Purus fringilla iaculis'
                                        ' turpis mattis in feugiat'
                                        ' ullamcorper turpis in. '
                                        'Pellentesque purus, blandit erat '
                                        'proin laoreet quis. Amet enim, '
                                        'hendrerit pellentesque nunc '
                                        'posuere. Mauris ac purus eu '
                                        'congue. Tincidunt risus at '
                                        'elementum orci nisl vivamus sed.'
                                        ' Duis facilisis massa morbi nisl. '
                                        'Facilisis volutpat nulla aliquet '
                                        'eu id bibendum feugiat vulputate '
                                        'diam. Sed ultricies phasellus '
                                        'lectus non massa facilisis massa.',
                                        softWrap: true,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ExpandablePanel(
                                      header: const Text(
                                        'Loraem ipsum',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      theme: const ExpandableThemeData(
                                        alignment: Alignment.center,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                      ),
                                      collapsed: const Text(
                                        'Lorem ipsum dolor'
                                        ' sit amet, consectetur adipiscing'
                                        ' elit.',
                                        softWrap: true,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                      expanded: const Text(
                                        'Lorem ipsum dolor sit amet,'
                                        ' consectetur adipiscing elit. '
                                        'In nibh massa arcu elementum sed'
                                        ' feugiat. Purus fringilla iaculis'
                                        ' turpis mattis in feugiat'
                                        ' ullamcorper turpis in. '
                                        'Pellentesque purus, blandit erat '
                                        'proin laoreet quis. Amet enim, '
                                        'hendrerit pellentesque nunc '
                                        'posuere. Mauris ac purus eu '
                                        'congue. Tincidunt risus at '
                                        'elementum orci nisl vivamus sed.'
                                        ' Duis facilisis massa morbi nisl. '
                                        'Facilisis volutpat nulla aliquet '
                                        'eu id bibendum feugiat vulputate '
                                        'diam. Sed ultricies phasellus '
                                        'lectus non massa facilisis massa.',
                                        softWrap: true,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF727FA3),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (v) {},
                                ),
                                const Expanded(
                                  child: Text('Saya telah membaca, memahami, '
                                      'dan menyetujui mengenai syarat '
                                      '& ketentuan'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: const BorderSide(color: Colors.blue, width: 1.5)),
                    child: const Text('Tidak'),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const SuccessDialog(
                          text: 'Selamat! Akun Anda telah berhasil'
                              ' terdaftar di akun Sephora Banking. '
                              'Silakan menikmati semua fitur Sephora '
                              'Banking.',
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Setuju'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
