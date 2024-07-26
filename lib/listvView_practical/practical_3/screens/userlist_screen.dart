import 'package:flutter/material.dart';
import 'package:flutter_project/listvView_practical/practical_3/models/usres.dart';
import 'package:flutter_project/listvView_practical/practical_3/screens/output_screen_checked.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:uuid/uuid.dart';

import 'output_screen_fandc.dart';
import 'output_screen_favorite.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<User> userList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud Operation'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          User user = userList[index];
          return Card(
            child: ListTile(
              onTap: () {
                addUserInListile(context: context, user: user);
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.cyan,
                child: Text(
                  '${user.name!.isEmpty ? '' : user.name![0].toUpperCase()}',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan.shade100),
                ),
              ),
              // title: Text('${user.name}'),
              title: Text(
                  '${user.name!.replaceFirst(user.name![0], user.name![0].toUpperCase())}'),
              subtitle: Text('${user.email}\n${user.contact}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: user.isCheck,
                    onChanged: (value) {
                      setState(() {
                        user.isCheck = value!;
                      });
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        userList[index].isLike = !userList[index].isLike;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: (userList[index].isLike == true)
                          ? Colors.redAccent
                          : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      bool result = await showAlertDialog(context, user);
                      /*  setState(() {
                        // userList.remove(userList[index]);
                        userList.removeWhere((element) => element.id == user.id);
                      });*/
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        spacing: 20,
        spaceBetweenChildren: 15,
        overlayColor: Colors.lightBlueAccent,
        overlayOpacity: 0.5,
        children: [
          SpeedDialChild(
            child: Row(
              children: [
                Icon(Icons.favorite, color: Colors.redAccent),
                Icon(Icons.check_box, color: Colors.indigo)
              ],
            ),
            label: 'favorite & Checked User List',
            // backgroundColor: Colors.yellow,
            onTap: () {
              allFandCListile(context: context);
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.check_box, color: Colors.indigo),
            label: 'Checked User List',
            // backgroundColor: Colors.yellow,
            onTap: () {
              allCheckedListile(context: context);
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.favorite, color: Colors.redAccent),
            label: 'Favorite User List',
            // backgroundColor: Colors.yellow,
            onTap: () {
              allFavoriteListile(context: context);
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.add),
            label: 'Add New User',
            // backgroundColor: Colors.yellow,
            onTap: () {
              addUserInListile(context: context);
            },
          )
        ],
      ),
/*
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // addUserInListile(context: context);
          showBotoomSheetDialog();
        },
        child: Icon(Icons.add),
      ),
*/
    );
  }

/*
  void showBotoomSheetDialog() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    addUserInListile(context: context);
                  },
                  child: Icon(Icons.add, size: 50),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    allFevoriteListile(context: context);
                  },
                  child: Icon(Icons.favorite, size: 50),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.check_box, size: 50),
                ),
              )
            ],
          ),
        );
      },
    );
  }
*/

  void addUserInListile({required BuildContext context, User? user}) {
    final _nameController =
        TextEditingController(text: user != null ? user.name : '');
    final _emailController =
        TextEditingController(text: user != null ? user.email : '');
    final _contactController =
        TextEditingController(text: user != null ? user.contact : '');

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom == 0
                  ? 20
                  : MediaQuery.of(context).viewInsets.bottom + 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                ),
              ),
              SizedBox(height: 12),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                ),
              ),
              SizedBox(height: 12),
              TextField(
                controller: _contactController,
                decoration: InputDecoration(hintText: 'Enter Contact No.'),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    String _name = _nameController.text.trim();
                    String _email = _emailController.text.trim();
                    String _contact = _contactController.text.trim();

                    var mUser = User(
                      name: _name,
                      email: _email,
                      contact: _contact,
                      id: user != null ? user.id : getUniqueId(),
                      isLike: false,
                      isCheck: false,
                    );
                    // print(' ID : ${user.id}');

                    if (user != null) {
                      updateUser(mUser, context);
                    } else {
                      addUser(mUser, context);
                    }
                  },
                  child: Text(
                      user != null ? 'Update User List' : 'Create User List'),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  getUniqueId() {
    var   uuid = Uuid();
    return uuid.v4();
  }

  void addUser(User user, BuildContext context) {
    setState(() {
      userList.add(user);
      Navigator.pop(context);
    });
  }

  void updateUser(User mUser, BuildContext context) {
    var index = userList.indexWhere((element) => element.id == mUser.id);
    if (index != -1) {
      setState(() {
        userList[index] = mUser;
        Navigator.pop(context);
      });
    }
  }

  Future<bool> showAlertDialog(BuildContext context, User user) async {
    return await showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Alert'),
        content: Text('Are you sure you want to Delete'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
              setState(() {
                userList.removeWhere((element) => element.id == user.id);
              });
            },
            child: Text('Delete'),
          )
        ],
      ),
    );
  }

  void allFavoriteListile({required BuildContext context}) {
    List<User> favoriteUser = userList.where((user) => user.isLike).toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => outputScreenFavorite(oUser: favoriteUser),
      ),
    );
  }

  void allCheckedListile({required BuildContext context}) {
    List<User> checkedUser = userList.where((user) => user.isCheck).toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => outputScreenChecked(oUser: checkedUser),
      ),
    );
  }

  void allFandCListile({required BuildContext context}) {
    List<User> fAndCUser =
        userList.where((user) => user.isLike && user.isCheck).toList();
    if (fAndCUser.isNotEmpty) {
      // List<User> cUser = userList.where((user) => user.isCheck).toList();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => outputscreenFandC(oUser: fAndCUser),
        ),
      );
    } else {}
  }
}
