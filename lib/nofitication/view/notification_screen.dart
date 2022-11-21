import 'package:flutter/material.dart';
import 'package:sephore/app_theme.dart';
import 'package:sephore/nofitication/models/user_list.dart';
import 'package:sephore/nofitication/widgets/pill_item.dart';
import 'package:sephore/nofitication/widgets/split_bill_item.dart';

enum Menu {
  semua,
  info,
  transaksi,
  splitBill,
  keamanan,
}

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late Menu _currentMenu;
  late PageController _pageController;
  late bool _fromPill;

  @override
  void initState() {
    _currentMenu = Menu.semua;
    _pageController = PageController();
    _fromPill = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _AppBar(),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  PillItem(
                    text: 'Semua',
                    active: _currentMenu == Menu.semua,
                    onPressed: () => setState(() {
                      _fromPill = true;
                      _currentMenu = Menu.semua;
                      _pageController.animateToPage(
                        _currentMenu.index,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        curve: Curves.linear,
                      );
                    }),
                  ),
                  PillItem(
                    text: 'Info & Promo',
                    active: _currentMenu == Menu.info,
                    onPressed: () => setState(() {
                      _fromPill = true;
                      _currentMenu = Menu.info;
                      _pageController.animateToPage(
                        _currentMenu.index,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        curve: Curves.linear,
                      );
                    }),
                  ),
                  PillItem(
                    text: 'Transaksi',
                    active: _currentMenu == Menu.transaksi,
                    onPressed: () => setState(() {
                      _fromPill = true;
                      _currentMenu = Menu.transaksi;
                      _pageController.animateToPage(
                        _currentMenu.index,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        curve: Curves.linear,
                      );
                    }),
                  ),
                  PillItem(
                    text: 'Split Bill',
                    active: _currentMenu == Menu.splitBill,
                    onPressed: () => setState(() {
                      _fromPill = true;
                      _currentMenu = Menu.splitBill;
                      _pageController.animateToPage(
                        _currentMenu.index,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        curve: Curves.linear,
                      );
                    }),
                  ),
                  PillItem(
                    text: 'Keamanan',
                    active: _currentMenu == Menu.keamanan,
                    onPressed: () => setState(() {
                      _fromPill = true;
                      _currentMenu = Menu.keamanan;
                      _pageController.animateToPage(
                        _currentMenu.index,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                        curve: Curves.linear,
                      );
                    }),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GestureDetector(
                onPanDown: (x) {
                  _fromPill = false;
                },
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (i) {
                    setState(() {
                      if (!_fromPill) {
                        _currentMenu = Menu.values[i];
                        _pageController.animateToPage(
                          _currentMenu.index,
                          duration: Duration(
                            milliseconds: 200,
                          ),
                          curve: Curves.linear,
                        );
                      }
                    });
                  },
                  children: [
                    Container(
                      child: Center(
                        child: Text('Semua'),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('Info & Promo'),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('Transaksi'),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SplitBillItem(
                            users: [
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User A',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User B',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User C',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User D',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User E',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User F',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User G',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User H',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User I',
                              ),
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User J',
                              ),
                            ],
                          ),
                          SplitBillItem(
                            users: [
                              UserList(
                                AssetImage('assets/user.jpeg'),
                                'User A',
                              ),
                              UserList(
                                null,
                                'User B',
                              ),
                            ],
                          ),
                          SplitBillItem(
                            users: List.generate(
                              50,
                              (index) => UserList(
                                AssetImage('assets/user.jpeg'),
                                'User $index',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('Keamanan'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.arrow_back,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 32,
            alignment: Alignment.center,
            child: Text(
              'Notifikasi',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
