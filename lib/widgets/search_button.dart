import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(
                      size: 30,
                      Icons.search_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "Искать в Malina",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: theme.hintColor.withOpacity(0.5),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
