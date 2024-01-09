import 'package:flutter/material.dart';
import 'package:newflutter/components/appbar.dart';
import 'package:newflutter/components/dropdown.dart';

void main() {
  runApp(MyJump());
}

class MyJump extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int groupValue = -1; // Initialize groupValue

  final List<String> soilTypes = ['Loam', 'Clayey', 'Red', 'Black', 'Mixed'];
  final List<String> rainfallOptions = ['Deficit', 'Excess', 'Normal'];
  final List<String> cropTypes = ['Tossa (JRO)', 'White (JRC)', 'Mesta'];
  final List<String> weedPresence = ['High', 'Medium', 'Low', 'None'];
  final List<String> sowing = ['Broadcasting', 'Line sowing'];
  final List<String> sowingweek = [
    '1st week',
    '2nd week',
    '3rd week',
    '4th week'
  ];
  final List<String> sowingmonth = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  final List<String> sowingYears =
      List.generate(13, (index) => (2018 + index).toString());

  final List<String> growthstages = [
    'sowing',
    'early',
    'vegetative',
    'late',
    'vegetative',
    'maturity',
    'others'
  ];
  final List<String> healthcondition = ['Good', 'Average', 'Poor'];
  final List<String> stress = [
    'Pest',
    'Disease',
    'Drought',
    'Flood',
    'No stress'
  ];
  final TextEditingController villageNameController = TextEditingController();
  final List<String> heightofthecrop = [
    '0.5',
    '1',
    '1.5',
    '2',
    '2.5',
    '3',
    '3.5',
    '4',
    '4.5',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];
  final List<String> expectedtotalfibreyield = ['Qtls', 'bigha'];
  final List<String> watersourcenearbyforretting = [
    'Pond',
    'Ditches',
    'river',
    'others',
    'none'
  ];
  String selectedSoilType = '';
  String selectedCurrentRainfall = '';
  String selectedPreviousRainfall = '';
  String selectedCropType = '';
  String selectedWeedPresence = '';
  String selectedSowing = '';
  String selectedSowingWeek = '';
  String selectedSowingMonth = '';
  String selectedGrowthStages = '';
  String selectedHealthCondition = '';
  String selectedStress = '';
  String selectedHeightOfTheCrop = '';
  String selectedExpectedTotalFibreYield = '';
  String selectedWaterSourceNearByForRetting = '';
  String selectedSowingYear = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(57, 57, 57, 1),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          //color: Colors.grey[300],
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: villageNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      labelText: 'Village Name',
                      //border: OutlineInputBorder(),
                    ),
                  ),
                ),
                CustomDropdown(
                  items: soilTypes,
                  title: 'Soil type',
                  onChanged: (value) {
                    setState(() {
                      selectedSoilType = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: rainfallOptions,
                  title: 'Current week rainfall',
                  onChanged: (value) {
                    setState(() {
                      selectedCurrentRainfall = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: rainfallOptions,
                  title: 'Previous week rainfall',
                  onChanged: (value) {
                    setState(() {
                      selectedPreviousRainfall = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: cropTypes,
                  title: 'Crop types',
                  onChanged: (value) {
                    setState(() {
                      selectedCropType = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: weedPresence,
                  title: 'Presence of weed',
                  onChanged: (value) {
                    setState(() {
                      selectedWeedPresence = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: sowing,
                  title: 'Sowing',
                  onChanged: (value) {
                    setState(() {
                      selectedSowing = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: sowingweek,
                  title: 'Sowing week',
                  onChanged: (value) {
                    setState(() {
                      selectedSowingWeek = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: sowingmonth,
                  title: 'Sowing month',
                  onChanged: (value) {
                    setState(() {
                      selectedSowingMonth = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: sowingYears,
                  title: 'Sowing Year',
                  onChanged: (value) {
                    setState(() {
                      selectedSowingYear = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: growthstages,
                  title: 'Growth Stages',
                  onChanged: (value) {
                    setState(() {
                      selectedGrowthStages = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: sowingmonth,
                  title: 'Sowing month',
                  onChanged: (value) {
                    setState(() {
                      selectedSowingMonth = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: healthcondition,
                  title: 'Health Condition',
                  onChanged: (value) {
                    setState(() {
                      selectedHealthCondition = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: stress,
                  title: 'Stress',
                  onChanged: (value) {
                    setState(() {
                      selectedStress = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: heightofthecrop,
                  title: 'Height Of The Crop',
                  onChanged: (value) {
                    setState(() {
                      selectedHeightOfTheCrop = value;
                    });
                  },
                  isRequired: true,
                ),
                CustomDropdown(
                  items: expectedtotalfibreyield,
                  title: 'Expected Total Fibre Yield',
                  onChanged: (value) {
                    setState(() {
                      selectedExpectedTotalFibreYield = value;
                    });
                  },
                ),
                CustomDropdown(
                  items: watersourcenearbyforretting,
                  title: 'Water Source Near By For Retting',
                  onChanged: (value) {
                    setState(() {
                      selectedWaterSourceNearByForRetting = value;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle the submit button press
                    // You can implement the logic to submit the form data here
                    print('Form submitted!');
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
