import 'package:coffee_shop/contraints/text_formatting.dart';
import 'package:coffee_shop/view_models/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.white
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4, 0.0]
              )
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFD9D9D9)
                        ),
                      ),
                      DropdownButton(
                        underline: SizedBox.shrink(),
                        value: model.selectedLocation,
                        hint: Text(
                          "Select a Location",
                          style: LocaltionTextStyle.locationDropdownItem,
                        ),
                        items: model.locations.map((location) => DropdownMenuItem(
                          value: location,
                          child: Text(
                            location,
                            style: LocaltionTextStyle.locationDropdownItem,
                          ),
                        )).toList(),
                        onChanged: (value) {
                          model.setSelectedLocation(value);
                        }
                      )
                    ],
                  ),
                  Row(
                    children: [
                       Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xFF2A2A2A),
                            filled: true,
                            hintText: 'Search...',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.filter_list_rounded,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                          fixedSize: WidgetStateProperty.all(Size(48, 48)),
                          backgroundColor: WidgetStateProperty.all(Color(0xFFC67C4E)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                          )
                        ),
                        onPressed: () {
                        
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}