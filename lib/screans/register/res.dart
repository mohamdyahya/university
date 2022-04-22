import 'package:flutter/material.dart';
import 'package:university/screans/register/components/body.dart';
class Reservation extends StatefulWidget {

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Body());
  }
}

