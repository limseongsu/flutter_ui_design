import 'package:flutter/material.dart';
import 'package:flutter_ui_design/models/profile.dart';

class ProfileHeadSection extends StatelessWidget {
  final Profile profile;

  const ProfileHeadSection(this.profile);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text('${profile.name},${profile.age}',
              // material.io의 테마를 가져와서 사용할 수 있게함.
              style: Theme.of(context).textTheme.headline6
                .merge(TextStyle(fontWeight: FontWeight.bold)),
              )),
              Icon(Icons.phone),
              profile.isVerifyMobile ? Text('전화번호 인증됨') : Text('전화번호 인증안됨')
            ],
          ),
          Text('${profile.location},${profile.distance}',
          style: Theme.of(context).textTheme.subtitle2,
          ),
          Text('${profile.height}cm, ${profile.bloodType}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
