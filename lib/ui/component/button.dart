import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  const CButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isFilled = true,
  });

  final Function() onPressed;
  final String text;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    if (isFilled) {
      return FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
            Size(
              MediaQuery.of(context).size.width * 0.9,
              50,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.background,
              ),
        ),
      );
    }
    return FilledButton.tonal(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(
            MediaQuery.of(context).size.width * 0.9,
            50,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
