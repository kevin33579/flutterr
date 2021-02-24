import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Stack(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white,Colors.lightBlue]
                      )
                  )),
              Container(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                        flex: 2,
                        child: Image.asset('Assets/Images/michael-jordan.jpg',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.fill)
                    ),
                    Flexible(
                        flex: 1,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('Assets/Images/download.jpg'),
                                ),borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              ),
                                width: 80,
                                height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                    image: AssetImage('Assets/Images/download (1).jpg'),
                                ),borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              ),
                                width: 80,
                                height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('Assets/Images/download (2).jpg'),
                                ),borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              ),
                                width: 80,
                                height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('Assets/Images/download (3).jpg'),
                                ),borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              ),
                                width: 80,
                                height: 80,
                            )
                          ],
                        )
                    ),
                    Text(
                      'Michael Jordan',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                        flex: 4,
                        child: ListView(
                          children: [
                            new Text('Michael Jeffrey Jordan (born February 17, 1963), '
                                'also known by his initials MJ,is an American businessman and former '
                                'professional basketball player. He is the principal owner and chairman of'
                                ' the Charlotte Hornets of the National Basketball Association (NBA) and'
                                ' of 23XI Racing in the NASCAR Cup Series. He played 15 seasons in the NBA,'
                                ' winning six championships with the Chicago Bulls. His biography on the'
                                ' official NBA website states: "By acclamation, Michael Jordan is the greatest basketball player'
                                ' of all time."He was integral in helping to popularize the NBA around the world in the 1980s and 1990s,'
                                ' becoming a global cultural icon in the process.'),
                            new Text('Jordan played college basketball for three seasons under coach Dean Smith with the North Carolina Tar Heels.'
                                ' As a freshman, he was a member of the Tar Heels '
                                'national championship team in 1982. Jordan joined the Bulls in 1984 as the third overall draft pick,'
                                ' and quickly emerged as a league star, entertaining crowds with his prolific scoring while gaining a '
                                'reputation as one of the games best defensive players.His leaping ability, demonstrated by performing slam'
                                ' dunks from the free throw line in Slam Dunk Contests, earned him the nicknames "Air Jordan" and'
                                ' "His Airness". Jordan won his first NBA championship with the Bulls in 1991, and followed'
                                ' that achievement with titles in 1992 and 1993, securing a "three-peat". Jordan abruptly retired'
                                ' from basketball before the 1993–94 NBA season to play Minor League Baseball, but'
                                ' returned to the Bulls in March 1995 and led them to three more championships in 1996, 1997, and'
                                ' 1998, as well as a then-record 72 regular-season wins in the 1995–96 NBA season.'
                                ' He retired for a second time in January 1999 but returned for two more NBA seasons from 2001 to 2003 as a'
                                ' member of the Washington Wizards.'),
                            new Text('Jordans individual accolades and accomplishments include six NBA Finals Most Valuable Player (MVP) Awards,'
                                ' ten scoring titles (both all-time records), five MVP Awards, ten All-NBA First Team designations, nine All-Defensive First'
                                ' Team honors, fourteen NBA All-Star Game selections, three All-Star Game MVP Awards, three'
                                ' steals titles, and the 1988 NBA Defensive Player of the Year Award. He holds the NBA records for career regular'
                                ' season scoring average (30.12 points per game) and career playoff scoring average (33.45 points per game).'
                                ' In 1999, he was named the 20th centurys '
                                'greatest North American athlete by ESPN, '
                                'and was second to Babe Ruth on the Associated Press list of athletes of the century. Jordan'
                                ' was twice inducted into the Naismith Memorial Basketball Hall of Fame, once in 2009 for'
                                ' his individual career and again in 2010 as part of the 1992 United States mens Olympic basketball team '
                                '("The Dream Team"). He became a member of the FIBA Hall of Fame in 2015.')
                          ],
                        )
                    )
                  ],
                )
              ),
                Positioned(
                    child: FloatingActionButton(
                      child: Icon(Icons.favorite),
                      foregroundColor: check? Colors.grey : Colors.red,
                      onPressed: (){
                        setState(() {
                          check = !check;
                        });
                      },
                    ),
                  right: 0,
                  top: 5,
                )

            ],

      ),
    );
  }
}

