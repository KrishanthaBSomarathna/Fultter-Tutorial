import 'package:flutter/material.dart';

class SearchingBar extends StatelessWidget {
  const SearchingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xffD9d9d9).withOpacity(0.5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 139, 139, 139),
                    )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(Icons.search,size: 30,color: const Color.fromARGB(255, 147, 147, 147),),
                      ),
                      Expanded(child: TextField(
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here..." ,
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 147, 147, 147),
                            fontSize: 18,
                            fontWeight: FontWeight.normal
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 9,)
                        ),
                      )),
                      
                    ],
                  ),);
  }
}