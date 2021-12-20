import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grouped_list/grouped_list.dart';

import 'contact_details_view.dart';

class HomeView extends StatelessWidget {
 HomeView({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  final List<Map<String,String>> data = 
  [
	{
		"name": "Kato Robles",
		"phone": "1-963-579-5371",
		"email": "duis.volutpat@hotmail.ca",
		"country": "Italy",
		"region": "Champagne-Ardenne"
	},
	{
		"name": "Rahim Bray",
		"phone": "1-794-174-5162",
		"email": "aenean.massa.integer@yahoo.org",
		"country": "United States",
		"region": "Illinois"
	},
	{
		"name": "Herrod Farmer",
		"phone": "(186) 751-7757",
		"email": "turpis.non@icloud.net",
		"country": "Germany",
		"region": "Central Sulawesi"
	},
	{
		"name": "Meghan Faulkner",
		"phone": "1-210-925-8814",
		"email": "pede.nunc@protonmail.ca",
		"country": "Canada",
		"region": "Saskatchewan"
	},
	{
		"name": "Orla Glass",
		"phone": "1-525-565-7531",
		"email": "nostra.per.inceptos@outlook.net",
		"country": "China",
		"region": "Paraíba"
	},
  {
		"name": "Micah Spence",
		"phone": "1-616-639-5214",
		"email": "interdum.libero.dui@aol.edu",
		"country": "Vietnam",
		"region": "La Libertad"
	},
	{
		"name": "Kai Farmer",
		"phone": "(264) 639-1125",
		"email": "nunc@outlook.couk",
		"country": "Australia",
		"region": "Kentucky"
	},
	{
		"name": "Hedy Rowe",
		"phone": "1-345-338-2049",
		"email": "non.magna.nam@yahoo.com",
		"country": "Belgium",
		"region": "Munster"
	},
	{
		"name": "Patrick Slater",
		"phone": "(663) 839-0838",
		"email": "consectetuer.adipiscing@google.edu",
		"country": "Netherlands",
		"region": "Yên Bái"
	},
	{
		"name": "Igor Heath",
		"phone": "1-166-173-5217",
		"email": "aliquet.lobortis@aol.edu",
		"country": "South Korea",
		"region": "North Gyeongsang"
	},
  {
		"name": "Abel Hopper",
		"phone": "1-681-312-2665",
		"email": "vivamus.rhoncus@google.org",
		"country": "Ireland",
		"region": "Antofagasta"
	},
	{
		"name": "Victoria Whitley",
		"phone": "1-253-451-1266",
		"email": "diam.proin@yahoo.edu",
		"country": "Ireland",
		"region": "Queensland"
	},
	{
		"name": "Jeremy Henry",
		"phone": "486-4088",
		"email": "iaculis.lacus.pede@outlook.com",
		"country": "India",
		"region": "South Island"
	},
	{
		"name": "Brynn Caldwell",
		"phone": "687-2407",
		"email": "luctus.felis.purus@yahoo.com",
		"country": "Germany",
		"region": "Styria"
	},
	{
		"name": "Wynne Giles",
		"phone": "1-732-826-4623",
		"email": "tellus.id@google.org",
		"country": "Colombia",
		"region": "Małopolskie"
	}
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: const Text(
              "My Contacts",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Center(
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/dog.jpg'),
                  ),
                ),
              )
            ],
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      hintText: 'Search by name or number',
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
            )),
        body: SafeArea(
          child: ListView(
            controller: _scrollController,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Recent',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              ListView.separated(
                controller: _scrollController,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: const [
                         ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/nab.jpg'),
                            ),
                            title: Text('Kingsley Fynn Asaam',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            subtitle: Text('+233 27 76 78187'),
                            trailing: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.more_horiz),
                            )),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(indent: 25, thickness: 1.3);
                  },
                  itemCount: 3),
                 const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Contacts', 
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  GroupedListView<Map<String, String>, String>(
                    shrinkWrap: true,
            elements: data,
            groupBy: (element) => element['name'].toString().substring(0,1),
            groupSeparatorBuilder: (String groupByValue) => 
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(groupByValue.substring(0,1),
          textAlign: TextAlign.right,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              ),
            ),
            itemBuilder: (context, Map<String, String> element) => Column(
              children: [
           ListTile(
                            leading: const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/nab.jpg'),
                            ),
                            title: Text('${element['name']}',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            subtitle: Text('${element['phone']}'),
                            trailing: const IconButton(
                              onPressed: null,
                              icon: Icon(Icons.more_horiz)
                            ),
                            ),
                 const Divider(indent: 25, thickness: 1.3)           
              ],
            ),
            itemComparator: (item1, item2) => item1['name']!.compareTo(item2['name']!), // optional
            useStickyGroupSeparators: true, // optionalJoam
            floatingHeader: true, // optional
            order: GroupedListOrder.ASC, // optional
          ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff1A4ADA),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ContactDetailsView();
          }));
          },
          child: const Icon(Icons.add),
          
          ));
          
  }
}
