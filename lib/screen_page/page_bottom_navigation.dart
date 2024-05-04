import 'package:coba/screen_page/page_list_berita.dart';
import 'package:coba/screen_page/page_profil_user.dart';
import 'package:flutter/material.dart';
import '../../utils/session_manager.dart';

class PageBottomNavigationBar extends StatefulWidget {
  const PageBottomNavigationBar({Key? key});

  @override
  State<PageBottomNavigationBar> createState() =>
      _PageBottomNavigationBarState();
}

class _PageBottomNavigationBarState extends State<PageBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late SessionManager sessionManager;

  @override
  void initState() {
    super.initState();
    sessionManager = SessionManager();
    sessionManager.getSession();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          PageListBerita(),
          PageProfileUser(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabController.index,
        onTap: (index) {
          tabController.animateTo(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article), // Ikon untuk Berita
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), // Ikon untuk Profil
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
