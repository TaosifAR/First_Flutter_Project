import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i=0;
  List<String> Codes =[] , Name = [];
  void fetchcodes()
  {
    Codes = ["CSE-4123","CSE- 3637","CSE-2344","CSE- 3637","CSE-2344"];
  }
  void fetchnames(){
    Name = ["Artificial Intelligence","Computre Architecture","Software Engineering","Computre Architecture","Software Engineering"];
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchcodes();
    fetchnames();
  }
List<Widget> generatingui(List<String> list)
{
  List<Widget> w=[];
  for(int i=0;i<list.length;i++)
    {
      w.add(Text(list[i],style: TextStyle(
        fontSize: 18,
      ),),);
    }
  return w;


}

  @override
  Widget build(BuildContext context) {
   var size= MediaQuery.of(context).size;

    return Scaffold(

      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("I.Portal",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * .077)),
               const SizedBox(height: 21,),
                Container(
                  width: size.width * .31,
                  height: size.width * .31,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/Image/Father.png",fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 11,),
                Text("Mokter Ahmad",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold



                ),),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(

                      child: Center(
                        child: Text(
                          "CGPA: 3.50", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20

                        ),
                        ),
                      ),
                      width: size.width *.41,
                      height: size.width *.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.teal
                      ),
                    ),
                    SizedBox(width: 20,),

                    Container(
                      width: size.width *.41,
                      height: size.width *.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.teal,

                      ),
                      child: Center(
                        child: Text(
                          "8th sem.", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20

                        ),
                        ),
                      ),
                    )
                  ],
                ),
                  SizedBox(height: 20,),


                  Column(
                    children: [
                      Text("+8801814340146",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),)

                    ],
                  ),

                Column(
                  children: [
                    Text("mokterahmad015@gmail.com",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      fontSize: 20

                    ),)
                  ],
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children:[ WidgetSpan(child: Icon(Icons.local_fire_department_rounded)),
                            TextSpan(
                              text: "Current Courses:",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 21,
                              )

                            )

                              ]


                        )
                      )
                    ],

                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(21, 0, 21, 21),
                  child: Container(
                    width: size.width,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey.shade400,

                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [



                          Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text("Course code: ",style: TextStyle(
                                   fontSize: 21,
                                   fontWeight: FontWeight.bold,
                                 ),),
                               ),
                             ),
                             Column(
                               children: generatingui(Codes),
                             ),
                             SizedBox(height: 20,),


                           ],
                         ),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Course name: ",style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                           Column(
                             children: generatingui(Name),
                           ),
                            SizedBox(height: 20,),

                          ],


                        ),

                      ],

                    )
                    ,

                  ),
                )


              ],
            ),
          ),
        ),

      ),
    ) ;
  }
}
