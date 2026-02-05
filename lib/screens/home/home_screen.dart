import 'package:coffee_shop_app/models/coffee.dart';
import 'package:coffee_shop_app/screens/coffee/coffee_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    "All",
    "Latte",
    "Americano",
    "Macchiato",
    "Cappuccino",
  ];

  final List<Coffee> coffees = [
    Coffee(
      id: "1",
      name: "Caffe Latte",
      subtitle: "Smooth Milk",
      category: "Latte",
      price: 4.50,
      rating: 4.7,
      image: "assets/images/coffee1.png",
    ),
    Coffee(
      id: "2",
      name: "Classic Americano",
      subtitle: "No Milk",
      category: "Americano",
      price: 3.20,
      rating: 4.5,
      image: "assets/images/coffee2.png",
    ),
    Coffee(
      id: "3",
      name: "Caramel Macchiato",
      subtitle: "Sweet Foam",
      category: "Macchiato",
      price: 4.90,
      rating: 4.8,
      image: "assets/images/coffee3.png",
    ),
    Coffee(
      id: "4",
      name: "Cappuccino",
      subtitle: "Rich Foam",
      category: "Cappuccino",
      price: 4.30,
      rating: 4.6,
      image: "assets/images/coffee4.png",
    ),
  ];

  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    final filteredCoffees = selectedCategory == "All"
        ? coffees
        : coffees.where((c) => c.category == selectedCategory).toList();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  height: 270,
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),
                        Text(
                          "Location",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Bilzen, Tanjungbalai",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                      "assets/images/search.png",
                                      width: 18,
                                      height: 18,
                                    ),
                                  ),
                                  hintText: "Search Coffee",
                                  hintStyle: GoogleFonts.sora(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xff313131),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffC67C4E),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/filter.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 110),

                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        bool isSelected = categories[index] == selectedCategory;
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategory = categories[index];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Color(0xffC67C4E)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  categories[index],
                                  style: GoogleFonts.sora(
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),

                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filteredCoffees.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 0.69,
                        ),

                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CoffeeDetailScreen(
                                coffee: filteredCoffees[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Icon placeholder
                              Container(
                                height: 150,

                                decoration: BoxDecoration(
                                  color: const Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      filteredCoffees[index].image,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 10),

                              Text(
                                filteredCoffees[index].name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),

                              const SizedBox(height: 2),

                              Text(
                                filteredCoffees[index].subtitle,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,

                                children: [
                                  Text(
                                    "${filteredCoffees[index].price.toStringAsFixed(2)} \$",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      color: Color(0xffC67C4E),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            // Banner overlay
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 200),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/banner.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
