// Each AST element is wrapped as an element
// We can dump each element to a String
import 'package:antlr4/antlr4.dart';
import 'package:pizza_sharp/antlr/PizzaSharpParser.dart';

abstract class ParseTreeElement {
  String multiLineString([String indentation = ""]);
}

// To dump a leaf (which corresponds to a Terminal) we just write
// T[...] and inside the square brackets we write the text corresponding
// to the terminal
class ParseTreeLeaf extends ParseTreeElement {
  final String text;

  ParseTreeLeaf({required this.text});

  @override
  String toString() {
    return "T[$text]";
  }

  @override
  String multiLineString([String indentation = ""]) {
    return "${indentation}T[$text]\n";
  }
}

// For nodes things are slightly more complex:
// we need to first print the name of the node, then in the next lines
// we print the children, recursively. While printing the children
// we increase the indentation
class ParseTreeNode extends ParseTreeElement {
  final String name;
  final List<ParseTreeElement> children = [];

  ParseTreeNode({required this.name});

  ParseTreeNode child(ParseTreeElement c) {
    children.add(c);
    return this;
  }

  @override
  String multiLineString([String indentation = ""]) {
    var string = "";

    string += "$indentation$name\n";
    string += children.map((c) => c.multiLineString("$indentation  ")).join();

    return string;
  }
}

// Given an AST node we wrap all the parts as elements:
// the terminals will be Leaf elements and the non-terminals
// will be Node elements.
// Once we have wrapped those elements we can produce a string for them
ParseTreeNode toParseTree(ParserRuleContext node) {
  final res = ParseTreeNode(name: node.runtimeType.toString());

  node.children?.forEach((c) {
    switch (c) {
      case TerminalNode tn:
        res.child(ParseTreeLeaf(text: tn.text ?? ""));
        break;
      case ParserRuleContext n:
        res.child(toParseTree(n));
        break;
    }
  });

  return res;
}
