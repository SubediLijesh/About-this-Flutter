import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('About us'),
      ) ,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              
                  Container(
                  child: ExpansionTileExample(),
                 ),
                  Container(
                  child: ExpansionTileExample2(),
                 ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Us:',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 8),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Sampang Chowk'),
                          subtitle: Text('Dharan,Sunsari'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('9816395937'),
                        ),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text('info@company.com'),
                        ),
                      ],
                    )
                ),
        
            ],
          ),
        ),
      ),
     
      
    );
  }
}


class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ExpansionTile(
          title: Text('How accurate is this app in general?'),
          // subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[
            ListTile(title: Text("Generally, the results of this app are quite accurate and at least comparable to the current state of the art. However, this app is still giving predictions only and those won't be right all the time.")),
          ],
        ),
       ],
    );
  }
}

class ExpansionTileExample2 extends StatefulWidget {
  const ExpansionTileExample2({super.key});

  @override
  State<ExpansionTileExample2> createState() => _ExpansionTileExample2State();
}

class _ExpansionTileExample2State extends State<ExpansionTileExample2> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
        const ExpansionTile(
          title: Text('How accurate is this app exactly?'),
          // subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[
            ListTile(title: Text("This app was trained with about 10000 images to learn distinguishing 71 individual breeds. As evaluated on about 3200 independent test images, there is a general probability of 92.02% for the correct breed to be shown in the result. With a likelihood of 74.89% it will even be the very first result")),
          ],
        ),
       ],

    );
  }
}
