import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String title;
  final ValueChanged<String> onChanged;
  final bool isRequired;

  const CustomDropdown({
    Key? key,
    required this.items,
    required this.title,
    required this.onChanged,
    this.isRequired = false,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.title}${widget.isRequired ? '*' : ''}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                filled: true,
                fillColor: Colors.black, // Set the background color to black
              ),
              value: selectedItem,
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              iconSize: 24,
              elevation: 16,
              dropdownColor: Colors.black,
              style: TextStyle(color: Colors.white),
              onChanged: (String? newValue) {
                setState(() {
                  selectedItem = newValue!;
                  widget.onChanged(selectedItem!);
                });
              },
              items: widget.items
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
