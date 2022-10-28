import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 200) >=
          scrollController.position.maxScrollExtent) {
        //add5();
        fetchData();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;

    Future.delayed(const Duration(seconds: 3));

    add5();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesIds.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300?image=${imagesIds[index] + 1}'),
            );
          },
        ),
      ),
    );
  }
}
