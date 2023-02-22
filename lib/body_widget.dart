import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangemant/counter_provider.dart';





class BodyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('Build BodyWidgetState');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ), 
          Expanded(
            child: Consumer<CounterProvider>( builder: (ctx, provider, child) {
                print('Build Consumer');
                return  Column(
                  children: [
                    Text(
                      '${provider.countValue}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                        itemCount: provider.listData.length,
                        itemBuilder: (_,index){
                      return Expanded(
                        child: ListTile(
                          title: Text('${provider.listData[index]['name']}'),
                          subtitle: Text('${provider.listData[index]['class']}'),
                          trailing: InkWell(
                              onTap: (){
                                provider.removeData(index: index);
                                provider.decrementCounter();
                              },
                              child: Icon(Icons.delete)),
                        ),
                      );
                    })
                  ],
                );
              }


            ),
          )

        ],
      ),
    );
  }
}


/*class MyTextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print('Build MyTextWidget');
    return  Text(
      '${Provider.of<CounterProvider>(context).countValue}',
      style: Theme.of(context).textTheme.headline4,
    );
  }

}*/

