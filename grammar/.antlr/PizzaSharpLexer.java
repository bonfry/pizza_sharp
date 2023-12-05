// Generated from d://Progetti personali//pizza_sharp//grammar//PizzaSharpLexer.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue", "this-escape"})
public class PizzaSharpLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		NEWLINE=1, WS=2, VAR=3, PRINT=4, INTLIT=5, DECLIT=6, PLUS=7, MINUS=8, 
		TIMES=9, DIVISION=10, ASSIGN=11, LPAREN=12, RPAREN=13, ID=14;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"NEWLINE", "WS", "VAR", "PRINT", "INTLIT", "DECLIT", "PLUS", "MINUS", 
			"TIMES", "DIVISION", "ASSIGN", "LPAREN", "RPAREN", "ID"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, null, null, "'dato'", "'mostra'", null, null, "'piu'", "'meno'", 
			"'per'", "'diviso'", "'uguale'", "'('", "')'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "NEWLINE", "WS", "VAR", "PRINT", "INTLIT", "DECLIT", "PLUS", "MINUS", 
			"TIMES", "DIVISION", "ASSIGN", "LPAREN", "RPAREN", "ID"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public PizzaSharpLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "PizzaSharpLexer.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\u0004\u0000\u000es\u0006\uffff\uffff\u0002\u0000\u0007\u0000\u0002\u0001"+
		"\u0007\u0001\u0002\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004"+
		"\u0007\u0004\u0002\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007"+
		"\u0007\u0007\u0002\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b"+
		"\u0007\u000b\u0002\f\u0007\f\u0002\r\u0007\r\u0001\u0000\u0001\u0000\u0001"+
		"\u0000\u0003\u0000!\b\u0000\u0001\u0001\u0004\u0001$\b\u0001\u000b\u0001"+
		"\f\u0001%\u0001\u0001\u0001\u0001\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001\u0004"+
		"\u0005\u00049\b\u0004\n\u0004\f\u0004<\t\u0004\u0003\u0004>\b\u0004\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0005\u0005C\b\u0005\n\u0005\f\u0005F\t"+
		"\u0005\u0003\u0005H\b\u0005\u0001\u0005\u0001\u0005\u0004\u0005L\b\u0005"+
		"\u000b\u0005\f\u0005M\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\u000b"+
		"\u0001\u000b\u0001\f\u0001\f\u0001\r\u0004\rp\b\r\u000b\r\f\rq\u0000\u0000"+
		"\u000e\u0001\u0001\u0003\u0002\u0005\u0003\u0007\u0004\t\u0005\u000b\u0006"+
		"\r\u0007\u000f\b\u0011\t\u0013\n\u0015\u000b\u0017\f\u0019\r\u001b\u000e"+
		"\u0001\u0000\u0005\u0002\u0000nnrr\u0001\u0000tt\u0001\u000019\u0001\u0000"+
		"09\u0002\u0000AZazz\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0003\u0001"+
		"\u0000\u0000\u0000\u0000\u0005\u0001\u0000\u0000\u0000\u0000\u0007\u0001"+
		"\u0000\u0000\u0000\u0000\t\u0001\u0000\u0000\u0000\u0000\u000b\u0001\u0000"+
		"\u0000\u0000\u0000\r\u0001\u0000\u0000\u0000\u0000\u000f\u0001\u0000\u0000"+
		"\u0000\u0000\u0011\u0001\u0000\u0000\u0000\u0000\u0013\u0001\u0000\u0000"+
		"\u0000\u0000\u0015\u0001\u0000\u0000\u0000\u0000\u0017\u0001\u0000\u0000"+
		"\u0000\u0000\u0019\u0001\u0000\u0000\u0000\u0000\u001b\u0001\u0000\u0000"+
		"\u0000\u0001 \u0001\u0000\u0000\u0000\u0003#\u0001\u0000\u0000\u0000\u0005"+
		")\u0001\u0000\u0000\u0000\u0007.\u0001\u0000\u0000\u0000\t=\u0001\u0000"+
		"\u0000\u0000\u000bG\u0001\u0000\u0000\u0000\rO\u0001\u0000\u0000\u0000"+
		"\u000fS\u0001\u0000\u0000\u0000\u0011X\u0001\u0000\u0000\u0000\u0013\\"+
		"\u0001\u0000\u0000\u0000\u0015c\u0001\u0000\u0000\u0000\u0017j\u0001\u0000"+
		"\u0000\u0000\u0019l\u0001\u0000\u0000\u0000\u001bo\u0001\u0000\u0000\u0000"+
		"\u001d\u001e\u0005r\u0000\u0000\u001e!\u0005n\u0000\u0000\u001f!\u0007"+
		"\u0000\u0000\u0000 \u001d\u0001\u0000\u0000\u0000 \u001f\u0001\u0000\u0000"+
		"\u0000!\u0002\u0001\u0000\u0000\u0000\"$\u0007\u0001\u0000\u0000#\"\u0001"+
		"\u0000\u0000\u0000$%\u0001\u0000\u0000\u0000%#\u0001\u0000\u0000\u0000"+
		"%&\u0001\u0000\u0000\u0000&\'\u0001\u0000\u0000\u0000\'(\u0006\u0001\u0000"+
		"\u0000(\u0004\u0001\u0000\u0000\u0000)*\u0005d\u0000\u0000*+\u0005a\u0000"+
		"\u0000+,\u0005t\u0000\u0000,-\u0005o\u0000\u0000-\u0006\u0001\u0000\u0000"+
		"\u0000./\u0005m\u0000\u0000/0\u0005o\u0000\u000001\u0005s\u0000\u0000"+
		"12\u0005t\u0000\u000023\u0005r\u0000\u000034\u0005a\u0000\u00004\b\u0001"+
		"\u0000\u0000\u00005>\u00050\u0000\u00006:\u0007\u0002\u0000\u000079\u0007"+
		"\u0003\u0000\u000087\u0001\u0000\u0000\u00009<\u0001\u0000\u0000\u0000"+
		":8\u0001\u0000\u0000\u0000:;\u0001\u0000\u0000\u0000;>\u0001\u0000\u0000"+
		"\u0000<:\u0001\u0000\u0000\u0000=5\u0001\u0000\u0000\u0000=6\u0001\u0000"+
		"\u0000\u0000>\n\u0001\u0000\u0000\u0000?H\u00050\u0000\u0000@D\u0007\u0002"+
		"\u0000\u0000AC\u0007\u0003\u0000\u0000BA\u0001\u0000\u0000\u0000CF\u0001"+
		"\u0000\u0000\u0000DB\u0001\u0000\u0000\u0000DE\u0001\u0000\u0000\u0000"+
		"EH\u0001\u0000\u0000\u0000FD\u0001\u0000\u0000\u0000G?\u0001\u0000\u0000"+
		"\u0000G@\u0001\u0000\u0000\u0000HI\u0001\u0000\u0000\u0000IK\u0005.\u0000"+
		"\u0000JL\u0007\u0003\u0000\u0000KJ\u0001\u0000\u0000\u0000LM\u0001\u0000"+
		"\u0000\u0000MK\u0001\u0000\u0000\u0000MN\u0001\u0000\u0000\u0000N\f\u0001"+
		"\u0000\u0000\u0000OP\u0005p\u0000\u0000PQ\u0005i\u0000\u0000QR\u0005u"+
		"\u0000\u0000R\u000e\u0001\u0000\u0000\u0000ST\u0005m\u0000\u0000TU\u0005"+
		"e\u0000\u0000UV\u0005n\u0000\u0000VW\u0005o\u0000\u0000W\u0010\u0001\u0000"+
		"\u0000\u0000XY\u0005p\u0000\u0000YZ\u0005e\u0000\u0000Z[\u0005r\u0000"+
		"\u0000[\u0012\u0001\u0000\u0000\u0000\\]\u0005d\u0000\u0000]^\u0005i\u0000"+
		"\u0000^_\u0005v\u0000\u0000_`\u0005i\u0000\u0000`a\u0005s\u0000\u0000"+
		"ab\u0005o\u0000\u0000b\u0014\u0001\u0000\u0000\u0000cd\u0005u\u0000\u0000"+
		"de\u0005g\u0000\u0000ef\u0005u\u0000\u0000fg\u0005a\u0000\u0000gh\u0005"+
		"l\u0000\u0000hi\u0005e\u0000\u0000i\u0016\u0001\u0000\u0000\u0000jk\u0005"+
		"(\u0000\u0000k\u0018\u0001\u0000\u0000\u0000lm\u0005)\u0000\u0000m\u001a"+
		"\u0001\u0000\u0000\u0000np\u0007\u0004\u0000\u0000on\u0001\u0000\u0000"+
		"\u0000pq\u0001\u0000\u0000\u0000qo\u0001\u0000\u0000\u0000qr\u0001\u0000"+
		"\u0000\u0000r\u001c\u0001\u0000\u0000\u0000\t\u0000 %:=DGMq\u0001\u0006"+
		"\u0000\u0000";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}