import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

// List of Ethiopian fun facts
final List<String> ethiopianFacts = [
  'Ethiopia is the only African country that was never colonized, maintaining its independence throughout history.',
  'Coffee was first discovered in Ethiopia, in the region of Kaffa, where it still grows wild in the mountain forests.',
  'Ethiopia uses a unique calendar system that is approximately seven years and eight months behind the Gregorian calendar.',
  'The Ethiopian alphabet, called Ge\'ez or Ethiopic, has 209 symbols and is one of the oldest alphabets still in use today.',
  'The Danakil Depression in Ethiopia is one of the lowest and hottest places on Earth, with temperatures reaching up to 125°F (52°C).',
  'Ethiopia is home to nine UNESCO World Heritage sites, including the rock-hewn churches of Lalibela.',
  'The Blue Nile, one of the two major tributaries of the Nile River, originates from Lake Tana in Ethiopia.',
  'Ethiopian cuisine is known for injera, a sourdough flatbread made from teff flour, which is native to Ethiopia.',
  'The Ethiopian Orthodox Church claims to possess the Ark of the Covenant in Aksum.',
  'Lucy, one of the oldest and most complete fossil skeletons of an early human ancestor, was discovered in Ethiopia.',
  'Ethiopia is known as the "Roof of Africa" due to its many mountains and high plateaus.',
  'The Ethiopian city of Addis Ababa is the highest capital city in Africa, situated at an elevation of 2,355 meters.',
  'Ethiopia is the birthplace of Abebe Bikila, who won the 1960 Olympic marathon running barefoot.',
  'The Ethiopian New Year (Enkutatash) is celebrated on September 11th (or 12th in leap years).',
  'Ethiopia has its own time system, with the day starting at 6 AM (dawn) rather than midnight.',
  'Ethiopia is the only country in the world that has a national language that is not based on the Latin alphabet.',
  'The Ethiopian flag has three colors: green, yellow, and red, which represent the three major religions in Ethiopia: Christianity, Islam, and Judaism.',
  'The Ethiopian flag is the only national flag in the world that has a star in the middle.',
  "Ethiopia has more than 80 ethnic groups, each with its own language and traditions.",
  "The Omo Valley in Ethiopia is home to some of the most culturally diverse tribes in the world.",
  "Ethiopia was one of the first countries to adopt Christianity in the 4th century AD.",
  "The Rastafarian movement considers Ethiopia a holy land and Emperor Haile Selassie a divine figure.",
  "Teff, a tiny ancient grain from Ethiopia, is gluten-free and packed with nutrients.",
  "The Simien Mountains in northern Ethiopia are home to rare animals like the Gelada baboon and Ethiopian wolf.",
  "Ethiopia has its own unique form of jazz music, known as Ethio-jazz, blending traditional sounds with modern styles.",
  "The traditional coffee ceremony in Ethiopia can last for hours and involves roasting, grinding, and brewing in front of guests.",
  "Ethiopia’s national dish, Doro Wat, is a spicy chicken stew often eaten during holidays and special occasions.",
  "Lake Tana, Ethiopia’s largest lake, contains ancient monasteries that date back hundreds of years.",
  "The Sidama region is famous for producing some of the world's most sought-after coffee beans.",
  "Ethiopia launched its first satellite into space in 2019, marking its entry into space science and technology.",
  "Timket, the Ethiopian Orthodox celebration of Epiphany, involves colorful processions and ceremonial river baptisms.",
  "The traditional Ethiopian dance, Eskista, is known for its unique shoulder movements and is performed across the country.",
  "In Ethiopian culture, meals are often eaten communally from a shared plate, emphasizing unity and togetherness.",
  "The Ethiopian calendar is based on the lunar cycle, with each year consisting of 13 months, each of which has 28 days.",
];

// List of relatable emojis for each fact (same order as ethiopianFacts)
final List<String> factEmojis = [
  '🦁', // Independence (Lion of Judah)
  '☕', // Coffee
  '📅', // Calendar
  '🔤', // Alphabet
  '🔥', // Danakil Depression (hot)
  '⛪', // Lalibela churches
  '🌊', // Blue Nile
  '🥙', // Injera
  '🛕', // Ark of the Covenant
  '🦴', // Lucy fossil
  '⛰️', // Roof of Africa
  '🏙️', // Addis Ababa
  '🏃‍♂️', // Abebe Bikila
  '🎉', // New Year
  '⏰', // Time system
  '🔡', // Non-Latin alphabet
  '🇪🇹', // Flag colors
  '⭐', // Flag star
  '🌍', // Ethnic groups
  '👥', // Omo Valley tribes
  '✝️', // Christianity
  '🦁', // Rastafarian/Haile Selassie
  '🌾', // Teff
  '🐒', // Simien Mountains animals
  '🎷', // Ethio-jazz
  '☕', // Coffee ceremony
  '🍗', // Doro Wat
  '⛪', // Lake Tana monasteries
  '☕', // Sidama coffee
  '🛰️', // Satellite
  '💦', // Timket/river
  '💃', // Eskista dance
  '🤝', // Communal meal
  '📅', // Calendar 13 months
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  TextTheme _buildTextTheme(TextTheme base, bool isDark) {
    return GoogleFonts.notoSansEthiopicTextTheme(
      GoogleFonts.poppinsTextTheme(base).copyWith(
        // Custom title style for Ethiopian flair
        titleLarge: GoogleFonts.notoSansEthiopic(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: isDark ? Colors.white : Colors.black,
        ),
        // Heading styles
        headlineLarge: GoogleFonts.notoSansEthiopic(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: isDark ? Colors.white : Colors.black,
        ),
        headlineMedium: GoogleFonts.notoSansEthiopic(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: isDark ? Colors.white : Colors.black,
        ),
        // Body text remains in Poppins for better readability
        bodyLarge: GoogleFonts.poppins(
          fontSize: 16,
          color: isDark ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethiopian Fun Fact',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF078C3C), // Ethiopian green
          onPrimary: Colors.white,
          secondary: Color(0xFFE31D1A), // Ethiopian red
          onSecondary: Colors.white,
          tertiary: Color(0xFFFEDD00), // Ethiopian yellow
          onTertiary: Colors.black,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
          error: Colors.red,
          onError: Colors.white,
        ),
        useMaterial3: true,
        textTheme: _buildTextTheme(ThemeData.light().textTheme, false),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF078C3C), // Ethiopian green
          onPrimary: Colors.white,
          secondary: Color(0xFFE31D1A), // Ethiopian red
          onSecondary: Colors.white,
          tertiary: Color(0xFFFEDD00), // Ethiopian yellow
          onTertiary: Colors.black,
          background: Color(0xFF121212),
          onBackground: Colors.white,
          surface: Color(0xFF1E1E1E),
          onSurface: Colors.white,
          error: Colors.red,
          onError: Colors.white,
        ),
        useMaterial3: true,
        textTheme: _buildTextTheme(ThemeData.dark().textTheme, true),
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  String _currentFact = 'Press the button to generate a fun fact!';
  bool _isLoading = false;
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Add animation controller for scaling the card
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  // Track the current emoji index
  int? _currentEmojiIndex;

  @override
  void initState() {
    super.initState();
    _audioPlayer.setSource(AssetSource('audio/coffee_pour.mp3'));
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
      lowerBound: 0.96,
      upperBound: 1.0,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _scaleController,
      curve: Curves.elasticOut,
    );
    _scaleController.value = 1.0;
    _currentEmojiIndex = null;
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  Future<void> _generateNewFact() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final random = Random();
      final factIndex = random.nextInt(ethiopianFacts.length);

      await _audioPlayer.seek(Duration.zero);
      await _audioPlayer.resume();

      // Animate scale down then up for card
      await _scaleController.reverse(from: 1.0);
      setState(() {
        _currentFact = ethiopianFacts[factIndex];
        _currentEmojiIndex = factIndex;
        _isLoading = false;
      });
      await _scaleController.forward();
    } catch (e) {
      setState(() {
        _currentFact = 'Error: Something went wrong. Please try again.';
        _currentEmojiIndex = null;
        _isLoading = false;
      });
      await _scaleController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          '🇪🇹 Ethiopian Fun Fact',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/lalibela_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Animated emoji above the card
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(
                          scale: animation,
                          child:
                              FadeTransition(opacity: animation, child: child));
                    },
                    child: Text(
                      _currentEmojiIndex != null &&
                              _currentEmojiIndex! < factEmojis.length
                          ? factEmojis[_currentEmojiIndex!]
                          : '🎲',
                      key: ValueKey<int?>(_currentEmojiIndex),
                      style: const TextStyle(fontSize: 64, shadows: [
                        Shadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0, 4))
                      ]),
                    ),
                  ),
                  // Card with animated scale and animated fact
                  ScaleTransition(
                    scale: _scaleAnimation,
                    child: Card(
                      elevation: 8,
                      shadowColor: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.3),
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(32.0),
                            constraints: const BoxConstraints(
                              minHeight: 200,
                              maxWidth: 600,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface
                                  .withOpacity(0.8),
                            ),
                            child: Center(
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 500),
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  // Combine slide and fade
                                  final inAnimation = Tween<Offset>(
                                    begin: const Offset(0.0, 0.2),
                                    end: Offset.zero,
                                  ).animate(animation);
                                  return FadeTransition(
                                    opacity: animation,
                                    child: SlideTransition(
                                      position: inAnimation,
                                      child: child,
                                    ),
                                  );
                                },
                                child: Text(
                                  _currentFact,
                                  key: ValueKey<String>(_currentFact),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                        fontSize: 22,
                                        height: 1.5,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      transform: Matrix4.identity()
                        ..scale(_isLoading ? 0.95 : 1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.8),
                            ],
                          ),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: _isLoading ? null : _generateNewFact,
                          icon: _isLoading
                              ? SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                  ),
                                )
                              : const Icon(Icons.auto_awesome, size: 24),
                          label: Text(
                            _isLoading ? 'Loading...' : '☕ Get Fun Fact',
                            style: GoogleFonts.notoSansEthiopic(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.6);
                                }
                                return Colors.transparent;
                              },
                            ),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
