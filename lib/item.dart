import 'package:flutter/material.dart';
import 'package:hotel_booking/hotelPage.dart';
import 'package:hotel_booking/hoteldeteils.dart';





class ItemCard extends StatelessWidget {
  const ItemCard({super.key,required this.hotels});
  final Hotel hotels;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotels: hotels),
          ));
        },
        child: Column(
          children: [
            ListTile(
              leading: Image.network(
                hotels.image,
                height: 50,
                width: 50,
              ),
              title: Text(hotels.name),
              subtitle: Text('${hotels.rate.toString()} star ratings'),              
            )
          ],
        ),
      ),
    );
  }
}

