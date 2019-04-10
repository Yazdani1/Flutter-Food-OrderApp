import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Food Order App"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[

          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: ()=>debugPrint("search")
          ),
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: ()=>debugPrint("Add")
          )

        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("Food Order App"),
                accountEmail: new Text("ydc@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.purple
              ),
            ),
            
            new ListTile(
              title: new Text("Burger"),
              leading: new Icon(Icons.title,color: Colors.deepOrange,size: 22.0,),
            ),
            new ListTile(
              title: new Text("Drinks"),
              leading: new Icon(Icons.hourglass_empty,color: Colors.purple,size: 22.0,),
            ),
            new ListTile(
              title: new Text("Chicken"),
              leading: new Icon(Icons.select_all,color: Colors.green,size: 22.0,),
            ),
            new ListTile(
              title: new Text("Ice Cream"),
              leading: new Icon(Icons.credit_card,color: Colors.red,size: 22.0,),
            ),
            new Divider(
              
            ),
            new ListTile(
              title: new Text("Close"),
              leading: new Icon(Icons.close,color: Colors.red,size: 22.0,),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),//end drawer

        
      body: new ListView(
        children: <Widget>[

          new Container(
            margin: EdgeInsets.all(10.0),
            height: 250.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                new Container(
                  child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: new ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: new Image(
                              image: new AssetImage("asset/e.jpg"),
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(10.0),
                          child: new Text("Orange",style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black
                          ),),
                        ),
                        new Container(
                          padding: EdgeInsets.only(left:10.0),
                          child: new Text("\$20",style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple
                          ),),
                        )

                      ],
                    ),
                  ),
                ),

                new Container(
                  child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: new ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: new Image(
                              image: new AssetImage("asset/h.jpg"),
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(10.0),
                          child: new Text("Drink",style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.black
                          ),),
                        ),
                        new Container(
                          padding: EdgeInsets.only(left:10.0),
                          child: new Text("\$30",style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple
                          ),),
                        )

                      ],
                    ),
                  ),
                ),
                new Container(
                  child: new Card(
                    elevation: 10.0,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: new ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: new Image(
                              image: new AssetImage("asset/c.jpg"),
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(10.0),
                          child: new Text("Chicke",style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.black
                          ),),
                        ),
                        new Container(
                          padding: EdgeInsets.only(left:10.0),
                          child: new Text("\$90",style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.purple
                          ),),
                        )

                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),//first container..

          //second container

          new Container(
            margin: EdgeInsets.all(10.0),
            height: 50.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                new Container(
                  width: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.purple,
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Align(
                    alignment: Alignment.center,
                    child: new Text("Drinks",
                    style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                ),
                new SizedBox(width: 10.0,),
                new Container(
                  width: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.orange,
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Align(
                    alignment: Alignment.center,
                    child: new Text("Food",
                    style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                ),
                new SizedBox(width: 10.0,),
                new Container(
                  width: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Align(
                    alignment: Alignment.center,
                    child: new Text("Chicken",
                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                ),

                new SizedBox(width: 10.0,),
                new Container(
                  width: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Align(
                    alignment: Alignment.center,
                    child: new Text("Fruits",
                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                ),
                new SizedBox(width: 10.0,),
                new Container(
                  width: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Align(
                    alignment: Alignment.center,
                    child: new Text("Sandwitch",
                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                    ),
                  ),
                )



              ],
            ),
          ),//category container
          //last container

          new Container(
            margin: EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                allData("asset/f.jpg", "i like food", "255"),
                allData("asset/e.jpg", "i like Drinks", "85"),
                allData("asset/d.jpg", "i like food", "65"),
                allData("asset/h.jpg", "i like food", "400")
              ],
            ),
          )


        ],
      ),


    );
  }

  Widget allData(String image,String name,String price){

    return Card(
      elevation: 10.0,
      child: new Container(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            new Container(
              margin: EdgeInsets.all(10.0),
              child: new ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: new Image(image: new AssetImage(image),
                  height: 100.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            new Container(
              margin: EdgeInsets.all(10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  new Text(name,
                  style: TextStyle(fontSize: 21.0,color: Colors.indigo),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: new Text("\$"+price,
                    style: TextStyle(fontSize: 20.0,color: Colors.red),
                    ),
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }

}
