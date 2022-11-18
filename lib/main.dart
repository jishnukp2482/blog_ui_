import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: blogui(),
    debugShowCheckedModeBanner: false,
  ));
  
}
 final List <Map> articles =[
    { "title":"Khasakkinte Itihasam",
      "author": "O. V. Vijayan",
      "time":"4 mins ago",
},
  { "title":"Mayyazhippuzhayude Theerangalil",
      "author": " M. Mukundan",
      "time":"6 mins ago",
},
  { "title":"Randamoozham",
      "author": "M. T. Vasudevan Nair",
      "time":"8 mins ago",
},
 
  { "title":"Aarachaar",
      "author": "K. R. Meera",
      "time":"10 mins ago",
},
{
  "title":"Goat Days",
  "author":" Benyamin",
  "time":"15 mins ago",
},
{
  "title":"Balyakalasakhi",
  "author":"Vaikom Muhammad Basheer",
  "time":"16 mins ago",
},
{
"title":"Oru Sankeerthanam Pole",
  "author":"Perumbadavam Sreedharan",
  "time":"18 mins ago",
},
{
"title":"Naalukettu",
  "author":"M. T. Vasudevan Nair",
  "time":"20 mins ago",
},
{
"title":"Oru Desathinte Katha",
  "author":"S. K. Pottekkatt",
  "time":"25 mins ago",
},

  ];

class blogui extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.category,color: Colors.black,),),
          title: Center(child: Text("Categories",style: TextStyle(color: Colors.black),)),
          actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded,color: Colors.black,),),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs:[
              
              Tab(
                child: Text("For You",style: TextStyle(color: Colors.black,fontSize: 15),),
               
              ),
              Tab(
                  child: Text("Design",style: TextStyle(color: Colors.black,fontSize: 15),),
                
              ),
              Tab(
                  child: Text("Beauty",style: TextStyle(color: Colors.black,fontSize: 15),),
                
              ),
              Tab(
                  child: Text("Education",style: TextStyle(color: Colors.black,fontSize: 15),),
              
              ),
              Tab(
                  child: Text("Entertainment",style: TextStyle(color: Colors.black,fontSize: 15),),
              
              ),
            ] ),
    
        ) ,
        body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return myarticle(index);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              ),
              const Text("Tab 2"),
              const Text("Tab 3"),
              const Text("Tab 4"),
              const Text("Tab 5"),
            ],
          ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: 1,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.folder),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings,),label: ""),
          ] ),
      ),
    );
  }
}
Widget myarticle(int index){
  Map article=articles[index];
  return Container(
    color: Colors.white,
    child: Stack(
      children: [
        Container(
          width: 90,
          height: 90,
          color: Color.fromARGB(255, 173, 232, 235),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                height: 100,
                color: Colors.blue,
                width: 80,
                child: Image(image: AssetImage("assets/images/book.jpg"),
                fit: BoxFit.cover,),
              ),
              SizedBox(width: 20,),
              Expanded(
                child:Column(
                  children: [
                    Text(article["title"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                       fontWeight:FontWeight.bold,
                      fontSize: 20,
                      color:  Color.fromARGB(255, 61, 85, 110),
                     
                    ),
                    
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(child: 
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromARGB(255, 239, 119, 159),
                          ),
                          ),
                          WidgetSpan(child: 
                          SizedBox(width: 5,),
                          ),
                          TextSpan(
                            text: article["author"],
                            style: TextStyle(fontSize: 15,),
                          ),
                          WidgetSpan(child: SizedBox(
                            width: 5,
                          ),),
                          TextSpan(
                            text:article["time"],
                          style: TextStyle(fontSize: 15,height: 3),),
                        ]
                      )
                    )
                  ],
                ) 
              )
            ],
          ),
        )
      ],
    ),
  );
}
