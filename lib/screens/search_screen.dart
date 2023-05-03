import 'package:flutter/material.dart';
import 'package:github/components/all.dart';
import 'package:github/constants/typography.dart';
import 'package:github/mocks/repositories_mock.dart';
import 'package:github/models/repository.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {

  final list = kRepositoriesMock;
  
  @override
  Widget build(BuildContext context) {
     
    
    return Scaffold(
      appBar: CustomAppBar(
        bottom: CustomSearchBar(onChanged: (search) => debugPrint('search'),
        onPressed:() {}),
      ),
      //SafeArea ocupa a tela do celular ocupando apenas os lugares que pode ex: "a tela n fica de baixo da camera"
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomText(
            text: 'Resultados',
             style: TypographyType.title
             ),
            ListView.separated(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
             itemCount: list.length,
             itemBuilder: (context,index){
              Repository repository = list[index];
      
              return ListTile(
              leading: CustomAvatar(
              //tratamento de erro dentro do safeArea "?"
                avatarUrl: repository.owner?.avatar,
                
              ),
      
              title: CustomText(text: '${repository.name}',
              style: TypographyType.body),
      
              subtitle: CustomText(
                text: repository.owner?.login ?? '-',
                style: TypographyType.body
              )
              
      
             );
      
             },
             separatorBuilder: (context,index){
              return const CustomDivider();
             }
            )
      
          ],
        ),
      )),
    );
  }
}