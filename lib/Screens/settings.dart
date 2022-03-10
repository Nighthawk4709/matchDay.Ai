import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late List<Icon> iconNew = [
    Icon(
      Icons.person_outline_sharp,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.calendar_today,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.sports,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.card_membership_rounded,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.monetization_on_rounded,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.list_alt,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.info_outline_rounded,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.logout_outlined,
      color: Colors.grey.shade600,
    )
  ];
  late List<Text> titleNew = [
    Text(
      "Edit Profile",
      style: TextStyle(fontSize: 16),
    ),
    Text(
      "View Bookings",
      style: TextStyle(fontSize: 16),
    ),
    Text(
      "Coaching",
      style: TextStyle(fontSize: 16),
    ),
    Text(
      "Memberships",
      style: TextStyle(fontSize: 16),
    ),
    Text(
      "Referal Code",
      style: TextStyle(fontSize: 16),
    ),
    Text(
      "Transaction History",
      style: TextStyle(fontSize: 16),
    ),
    Text(
      "About",
      style: TextStyle(fontSize: 16),
    ),
    Text(
      "Log Out",
      style: TextStyle(fontSize: 16),
    ),
  ];
  late List<IconButton> trailNew = [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.grey.shade600,
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.grey.shade600,
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.grey.shade600,
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.grey.shade600,
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.grey.shade600,
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.grey.shade600,
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_forward_ios_rounded),
      color: Colors.grey.shade600,
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.meeting_room),
      color: Colors.grey.shade600,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green[400],
            ),
          ),
          title: Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
            child: Text("Your Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20)),
          )),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Image.asset(
                              "assets/image/user.png",
                              fit: BoxFit.cover,
                            ),
                          )))
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Column(
                children: [
                  Row(children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: MediaQuery.of(context).size.width * 0.15,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Text(
                            "Aniket Tiwari",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ))
                  ]),
                  Row(children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: MediaQuery.of(context).size.width * 0.15,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "+91 7297294444",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ))
                  ])
                ],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemExtent: 60,
                itemCount: iconNew.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: iconNew[index],
                    title: titleNew[index],
                    trailing: trailNew[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
