import 'package:flutter/material.dart';

void main() {
  runApp(const ApexWeek13App());
}

class ApexWeek13App extends StatelessWidget {
  const ApexWeek13App({super.key});

  @override
  Widget build(BuildContext context) {
    const charcoalBg = Color(0xFF1E2229);
    const cardSurface = Color(0xFF2A2F38);
    const neonLime = Color(0xFFC8E600);
    const mutedGray = Color(0xFF9CA3AF);

    return MaterialApp(
      title: 'APEX Workout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: charcoalBg,
        colorScheme: const ColorScheme.dark(
          primary: neonLime,
          onPrimary: Color(0xFF14171C),
          surface: cardSurface,
          onSurface: Colors.white,
        ),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Colors.white,
            letterSpacing: 0.4,
          ),
          bodyMedium: TextStyle(
            fontSize: 13,
            color: mutedGray,
          ),
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: Color(0xFF14171C),
            letterSpacing: 0.8,
          ),
        ),
      ),
      home: const ApexLoginStaticScreen(),
    );
  }
}

class ApexLoginStaticScreen extends StatelessWidget {
  const ApexLoginStaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const cardSurface = Color(0xFF2A2F38);
    const neonLime = Color(0xFFC8E600);
    const mutedGray = Color(0xFF9CA3AF);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: cardSurface,
        foregroundColor: Colors.white,
        title: const Text(
          'APEX WORKOUT',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'VOLUME UP YOUR BODY GOALS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 18),
              const Row(
                children: [
                  Expanded(
                    child: _FocusTile(
                      label: 'STRENGTH',
                      accentColor: neonLime,
                      surfaceColor: cardSurface,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: _FocusTile(
                      label: 'POWER',
                      accentColor: neonLime,
                      surfaceColor: cardSurface,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: _FocusTile(
                      label: 'STAMINA',
                      accentColor: neonLime,
                      surfaceColor: cardSurface,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              const Text(
                'MEMBER USERNAME',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: mutedGray,
                  letterSpacing: 0.7,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                decoration: BoxDecoration(
                  color: cardSurface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Enter Member Username',
                  style: TextStyle(color: mutedGray, fontSize: 13.5),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'PASSWORD',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: mutedGray,
                  letterSpacing: 0.7,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                decoration: BoxDecoration(
                  color: cardSurface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Enter Password',
                  style: TextStyle(color: mutedGray, fontSize: 13.5),
                ),
              ),
              const SizedBox(height: 22),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: neonLime,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  'LOGIN',
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FocusTile extends StatelessWidget {
  const _FocusTile({
    required this.label,
    required this.accentColor,
    required this.surfaceColor,
  });

  final String label;
  final Color accentColor;
  final Color surfaceColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      decoration: BoxDecoration(
        color: surfaceColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Icon(Icons.fitness_center_rounded, color: accentColor, size: 24),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}