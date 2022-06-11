export 'domain/clab_domain.dart';
export 'providers/providers.dart';
export 'screens/screens.dart';
export 'widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/services.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:hug/clab/widgets/clab_widget.dart';


class CodeLab extends StatefulWidget {
 const  CodeLab({Key? key}) : super(key: key);

  @override
  State<CodeLab> createState() => _CodeLabState();
}

class _CodeLabState extends State<CodeLab> {
    CodeController? _codeController;
 @override
  Widget build(BuildContext context) {
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Color.fromARGB(255, 70, 29, 29)));
    return MaterialApp(
      home:Scaffold(
        appBar: 
        PreferredSize(child: 
        appBar(), 
        preferredSize:const Size(double.infinity,64)), 
        body:
      Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius:const BorderRadius.all(Radius.circular(4)),
        border: Border.all(
          color: Colors.blue,
          width: 2
        )
        
      ),
      child: CodeField(controller: _codeController!))
    ),
    debugShowCheckedModeBanner: false,
    );
  }

  @override
  void initState() {
    super.initState();
    const source = "void main() {\n    print(\"Hello, world!\");\n}";
    _codeController = CodeController(
      text: source,
      language: dart,
      theme: monokaiSublimeTheme,
    );
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

}