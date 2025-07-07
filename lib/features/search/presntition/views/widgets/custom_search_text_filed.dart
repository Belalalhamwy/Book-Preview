import 'package:bookly/features/presntation/manger/search_Books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  // ignore: non_constant_identifier_names
  late TextEditingController search_controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    search_controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onSubmitted: (value) {
            // ignore: unnecessary_null_comparison
            value != null
                ? context
                    .read<SearchBooksCubit>()
                    .fetchSearchBooks(query: value)
                : null;
          },
          onChanged: (value) {
            // ignore: unnecessary_null_comparison
            value != null
                ? context
                    .read<SearchBooksCubit>()
                    .fetchSearchBooks(query: value)
                : null;
          },
          controller: search_controller,
          decoration: InputDecoration(
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText: 'Search For a Book',
            suffixIcon: IconButton(
                onPressed: () {
                  // ignore: unnecessary_null_comparison
                  search_controller.text != null
                      ? context
                          .read<SearchBooksCubit>()
                          .fetchSearchBooks(query: search_controller.text)
                      : null;
                },
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                )),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(15));
}
