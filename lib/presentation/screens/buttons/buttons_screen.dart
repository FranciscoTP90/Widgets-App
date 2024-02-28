import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text("Elevated Disabled"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.javascript),
              label: const Text("Elevated Icon"),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text("Filled Button"),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.featured_play_list),
              label: const Text("Filled Icon"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outline Button"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.featured_play_list),
              label: const Text("Outline Icon"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.featured_play_list),
              label: const Text("Text Icon"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.h_mobiledata),
            ),
            IconButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colorScheme.primary),
                iconColor: MaterialStatePropertyAll(colorScheme.onPrimary),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.h_mobiledata,
              ),
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colorScheme.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Custom",
              style: TextStyle(color: colorScheme.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
