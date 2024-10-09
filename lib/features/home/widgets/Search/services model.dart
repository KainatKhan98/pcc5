import 'package:flutter/material.dart';
import 'package:pet/constants/images.dart';
import 'package:pet/features/home/care%20screen/dentalscreen.dart';
import 'package:pet/features/home/care%20screen/illnessandinjuries.dart';
import 'package:pet/features/home/care%20screen/litter%20training.dart';
import 'package:pet/features/home/care%20screen/pet%20sitting.dart';
import 'package:pet/features/home/care%20screen/pet%20walking.dart';
import 'package:pet/features/home/care%20screen/routinecheckup.dart';
import 'package:pet/features/home/grooming%20screen/bathing_and_brushing.dart';
import 'package:pet/features/home/grooming%20screen/deshedding_and_haircutting.dart';

import '../../care screen/vaccinescreen.dart';
class Service {
  final String name;
  final Widget screen; // This is the target screen to navigate to

  Service({required this.name, required this.screen});
}
List<Service> services = [
  Service(name: 'Vaccination', screen: VaccinationScreen()),
  Service(name: 'Dental Care', screen: DentalCare()),
  Service(name: 'Routine Checkup', screen: RoutineCheckup()),
  Service(name: 'Illness & Injuries', screen: IllnessAndInjuries()),
  Service(name: 'Pet Sitting', screen: PetSitting()),
  Service(name: 'Pet Walking', screen: PetWalking()),
  Service(name: 'Litter Training', screen: LitterTraining()),
  Service(name: 'Bathing & Brushing', screen: BathingAndBrushing()),
  Service(name: 'Haircutting & De-shedding', screen: DesheddingAndCutting()),
];
