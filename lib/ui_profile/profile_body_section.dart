import 'package:flutter/material.dart';
import 'package:flutter_ui_design/models/profile.dart';

class ProfileBodySection extends StatelessWidget {
  final Profile profile;
  ProfileBodySection(this.profile);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '학교',
                      style: TextStyle(color: Color(0xFFa2a2a2)),
                    ),
                    flex: 4,
                  ),
                  Expanded(child: Text(profile.educationLevel),
                  flex: 6,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '직업',
                      style: TextStyle(color: Color(0xFFa2a2a2)),
                    ),
                    flex: 4,
                  ),
                  Expanded(child: Text(profile.basicOccupation),
                    flex: 6,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '내 소개',
                      style: TextStyle(color: Color(0xFFa2a2a2)),
                    ),
                    flex: 4,
                  ),
                  Expanded(child: Text(profile.description),
                    flex: 6,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '종교',
                            style: TextStyle(color: Color(0xFFa2a2a2)),
                          ),
                          flex: 4,
                        ),
                        Expanded(child: Text(profile.religion),
                          flex: 6,
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '음주',
                            style: TextStyle(color: Color(0xFFa2a2a2)),
                          ),
                          flex: 4,
                        ),
                        Expanded(child: Text(profile.alcohol),
                          flex: 6,
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            '흡연',
                            style: TextStyle(color: Color(0xFFa2a2a2)),
                          ),
                          flex: 4,
                        ),
                        Expanded(child: Text(profile.smoke),
                          flex: 6,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
