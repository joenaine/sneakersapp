import 'package:flutter/material.dart';
import 'package:sneakers/movies/widgets/dot_tab_indicator.dart';
import 'package:sneakers/movies/widgets/movies_view.dart';
import 'package:sneakers/movies/widgets/movies_view2.dart';
import 'package:sneakers/movies/widgets/movies_view3.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
            indicator: const DotIndicator(),
            controller: _tabController,
            isScrollable: true,
            tabs: const [
              Tab(text: 'Adidas'),
              Tab(text: 'Nike'),
              Tab(text: 'Reebok'),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          MoviesView(),
          MoviesView2(),
          MoviesView3(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
