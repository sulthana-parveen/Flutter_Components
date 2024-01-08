import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  final bloodGroups =['A+','A-','B+','B-','O+','O-','AB+','AB-'];
  String ? selectedGroup;
  final CollectionReference donor = FirebaseFirestore
                                   .instance
                                   .collection('donor');
  TextEditingController donorName = TextEditingController();
  TextEditingController donorPhone = TextEditingController();
  TextEditingController donorGroup = TextEditingController();
  
  void addDonor(){
   final data = {'name':donorName.text,'phone':donorPhone.text,'group':selectedGroup};
   donor.add(data)
   .then((value) => Navigator.pop(context));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:  const Text("Add Donors"),
        backgroundColor: Colors.red,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
         
          children: [
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
               controller:  donorName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Donor Name")
                  ),   
              ),
            ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                controller: donorPhone,
                keyboardType: TextInputType.number,
                maxLength: 10,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Phone Number")),   
               ),
             ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: DropdownButtonFormField(
                  decoration: const InputDecoration(
                    label: Text("Select Blood Group")
                  ),
                     items: bloodGroups
                    .map((e) => DropdownMenuItem(
                     value: e,
                     child: Text(e)
                  ))
                     .toList(),
                      onChanged: (val){
                      selectedGroup =  val;
                             } ,),
               ),
               ElevatedButton(
                onPressed: (){
                  addDonor();
                }, 
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
                child: const Text("Submit",
                style: TextStyle(fontSize: 20),
                )
                )
          ],
        ),
      ),
    );
  }
}