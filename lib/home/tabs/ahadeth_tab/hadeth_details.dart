import 'package:flutter/material.dart';
import 'package:islamy_app/models/hadeth_model.dart';
import 'package:islamy_app/my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});
static const String routeName = 'HadethDetails';
  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      backgroundColor: MyThemeData.darkColor,
      appBar: AppBar(
       // backgroundColor: const Color(0xff202020),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xffE2BE7F),
          ),
        ),
        title: Text(
          hadeth.title,
         
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/left_mask.png"),
                Text(hadeth.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 14
                    )
                    ),
            
                Image.asset("assets/images/right_mask.png"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text.rich(
                      
                        textAlign: TextAlign.center,
                        TextSpan(children: [
                          TextSpan(
                            text: hadeth.content[index].trim(),
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 22,height: 2)
                          ),
                         
                        ])),
                  );
                },
                itemCount: hadeth.content.length,
              ),
            ),
            Image.asset("assets/images/footer_mask.png"),
          ],
        ),
      ),
    );
  }
}