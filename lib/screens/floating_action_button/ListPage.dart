import 'package:animations/screens/floating_action_button/widgets/final_FAB.dart';
import 'package:animations/screens/floating_action_button/widgets/initial_FAB.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final items = List<String>.generate(100, (i) => "Item $i");
  ScrollController _scrollController = ScrollController();
  bool _isFABComposing = true;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset >= 50 && _isFABComposing) {
      setState(() {
        _isFABComposing = false;
      });
    } else if (_scrollController.offset < 50 && !_isFABComposing) {
      setState(() {
        _isFABComposing = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrollable List with Animated FAB"),
      ),
      body: ListView.builder(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
      floatingActionButton: _isFABComposing ? buildExtendedFAB() : buildFAB(),
    );
  }
}
