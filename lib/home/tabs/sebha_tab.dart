import 'package:flutter/material.dart';
import 'package:islamy_app/provider/my_privider.dart';
import 'package:provider/provider.dart';


// ignore: must_be_immutable
class SebhaTab extends StatelessWidget {
   SebhaTab({super.key});
 int sebhaCounter = 30;
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      builder: (context, child) {
         var myProvider = Provider.of<MyProvider>(context);
        return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //  Image.asset("assets/images/titlewidget.png"),
            // const SizedBox(height: 16,),
             Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white,fontSize: 30)
                 ),
              const SizedBox(height: 16,),
              Stack(
                alignment: Alignment.center,
                children: [
                  InkWell(
                    splashColor: Theme.of(context).primaryColor,
                    onTap: ()
                    {
                      myProvider.increment();
                    },
                    child: Image.asset("assets/images/SebhaBody 1.png")),
                  Column(
                    children: [
                      Text(myProvider.zekr,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white,fontSize: 30)),
                      Text(myProvider.counter.toString(),style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white,fontSize: 30)),
                    ],
                  )
                ],
              )   
            ],
          ),
        ),
      );
      },
    );
  }
}