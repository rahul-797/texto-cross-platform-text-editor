import 'package:flutter/material.dart';
import 'package:zefyrka/zefyrka.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = ZefyrController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ZefyrToolbar.basic(controller: _controller),
          Expanded(
            child: ZefyrEditor(
              controller: _controller,
              autofocus: true,
              enableSuggestions: true,
              textCapitalization: TextCapitalization.sentences,
              clipboardController: SimpleClipboardController(),
              showCursor: true,
              showSelectionHandles: true,
              scrollable: true,
              scrollPhysics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(8),
              keyboardAppearance: Brightness.light,
            ),
          ),
        ],
      ),
    );
  }
}
