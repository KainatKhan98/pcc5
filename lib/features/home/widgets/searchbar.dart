import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  // Example list of services (strings)
  final List<String> services = [
    'Vaccination',
    'Dental Care',
    'Routine Checkup',
    'Illness & Injuries',
    'Pet Sitting',
    'Pet Walking',
    'Litter Training',
    'Grooming - Bathing & Brushing',
    'Grooming - Haircutting',
    'Grooming - Styling & Touches'
  ];

  List<String> _filteredServices = []; // To store filtered results
  String _searchQuery = ''; // To store the current search query

  @override
  void initState() {
    super.initState();
    _filteredServices = services; // Initially display all services
  }

  // Method to filter the services based on the search input
  void _filterServices(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
      _filteredServices = services
          .where((service) => service.toLowerCase().contains(_searchQuery))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity, // Makes the search bar fill the available width
            child: TextField(
              onChanged: (value) => _filterServices(value), // Call search logic
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: const BorderSide(
                    color: textColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: const BorderSide(
                    color: textColor,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: const BorderSide(
                    color: textColor,
                    width: 1.5,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0), // Adjusts height
              ),
            ),
          ),
        ),
        // List of filtered services
        Expanded(
          child: _filteredServices.isNotEmpty
              ? ListView.builder(
            itemCount: _filteredServices.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_filteredServices[index]),
                onTap: () {
                  // Handle the service tap
                  // You can navigate to the respective service screen here
                  print('Navigating to ${_filteredServices[index]} screen');
                },
              );
            },
          )
              : const Center(
            child: Text('No matching services found'),
          ),
        ),
      ],
    );
  }
}
