import 'package:flutter/material.dart';
class IndianDish {
  final String name;
  final double price;
  final String weight;
  final String imageUrl;

  IndianDish({
    required this.name,
    required this.price,
    required this.weight,
    required this.imageUrl,
  });
}

class MySliverDemo1 extends StatelessWidget
{
  List<IndianDish> indianDishes = [
    IndianDish(
      name: 'Palak Paneer',
      price: 10.99,
      weight: '250g',
      imageUrl: 'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Masala Dosa',
      price: 8.75,
      weight: '200g',
      imageUrl: 'https://images.unsplash.com/photo-1661170257237-49f2d5f2c5e8?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Chole Bhature',
      price: 9.99,
      weight: '350g',
      imageUrl: 'https://images.unsplash.com/photo-1596797038530-2c107229654b?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Paneer Tikka',
      price: 11.50,
      weight: '200g',
      imageUrl: 'https://images.unsplash.com/photo-1599487486890-3b2a4b2b4c8f?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Aloo Gobi',
      price: 9.25,
      weight: '280g',
      imageUrl: 'https://images.unsplash.com/photo-1631515243253-195e2c9d5e5e?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Dal Makhani',
      price: 10.50,
      weight: '300g',
      imageUrl: 'https://images.unsplash.com/photo-1626503161546-6c0c2d0f6c7f?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Samosa (2 pcs)',
      price: 5.99,
      weight: '150g',
      imageUrl: 'https://images.unsplash.com/photo-1601050694382-9e0e0e65f330?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Veg Thali',
      price: 13.75,
      weight: '500g',
      imageUrl: 'https://unsplash.com/photos/gep3f7NQzZY/download?force=true&w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Malai Kofta',
      price: 12.25,
      weight: '300g',
      imageUrl: 'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Pav Bhaji',
      price: 8.50,
      weight: '350g',
      imageUrl: 'https://images.unsplash.com/photo-1626503161546-6c0c2d0f6c7f?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Gulab Jamun (2 pcs)',
      price: 4.99,
      weight: '100g',
      imageUrl: 'https://images.unsplash.com/photo-1621939514642-93e46ee9b5a6?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Rajma Chawal',
      price: 9.75,
      weight: '350g',
      imageUrl: 'https://images.unsplash.com/photo-1631515243253-195e2c9d5e5e?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Idli Sambar (3 pcs)',
      price: 7.50,
      weight: '250g',
      imageUrl: 'https://images.unsplash.com/photo-1668235538383-6a3e3a6b4d14?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Kheer',
      price: 5.50,
      weight: '150g',
      imageUrl: 'https://images.unsplash.com/photo-1621939514642-93e46ee9b5a6?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Paneer Butter Masala',
      price: 12.99,
      weight: '300g',
      imageUrl: 'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Vada Pav (2 pcs)',
      price: 6.99,
      weight: '200g',
      imageUrl: 'https://unsplash.com/photos/nNIHe72pa60/download?force=true&w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Vegetable Biryani',
      price: 11.75,
      weight: '400g',
      imageUrl: 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Aloo Paratha (2 pcs)',
      price: 8.25,
      weight: '300g',
      imageUrl: 'https://images.unsplash.com/photo-1631515243253-195e2c9d5e5e?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Rasmalai (2 pcs)',
      price: 5.99,
      weight: '120g',
      imageUrl: 'https://images.unsplash.com/photo-1621939514642-93e46ee9b5a6?w=500&h=500&fit=crop',
    ),
    IndianDish(
      name: 'Matar Paneer',
      price: 11.25,
      weight: '280g',
      imageUrl: 'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=500&h=500&fit=crop',
    ),
  ];

  MySliverDemo1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
               SliverList(delegate: SliverChildBuilderDelegate((context,index) {
                  return Padding(
                    padding: const EdgeInsets.only(left:10,right:10,top: 2,bottom: 2),
                    child: Card(
                      elevation: 10,
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(indianDishes[index].imageUrl),
                          ),
                          title: Text(indianDishes[index].name,style:
                            const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold
                            ),),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Price : ${indianDishes[index].price}"),
                              Text("Weight : ${indianDishes[index].weight}"),
                            ],
                          ),
                      ),
                    ),
                  );
               },
                   childCount: indianDishes.length)),
               SliverGrid(
                 delegate: SliverChildBuilderDelegate((context,index){
                 return Card(
                   elevation: 10,
                   child: Column(
                     children: [
                          Expanded(
                           flex:2,
                           child: Text(
                             textAlign: TextAlign.center,
                             indianDishes[index].name,style: TextStyle(
                               fontSize: 20, fontWeight: FontWeight.bold
                           ),),
                         ),
                       Expanded(
                         flex: 8,
                         child: ClipRRect(
                           borderRadius:
                           const BorderRadius.vertical(top: Radius.circular(10)),
                           child: Image.network(
                             indianDishes[index].imageUrl,
                             fit: BoxFit.cover,
                             loadingBuilder: (context, child, loadingProgress) {
                               if (loadingProgress == null) return child;
                               return const Center(child: CircularProgressIndicator());
                             },
                             errorBuilder: (context, error, stackTrace) => const Center(
                               child: Icon(Icons.broken_image, size: 128, color: Colors.grey),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                           flex: 2,
                           child: Padding(
                             padding: EdgeInsets.only(left: 15,right: 15),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                   Text(indianDishes[index].price.toString()),
                                   Text(indianDishes[index].weight.toString()),
                               ],
                             ),
                           ),
                         )
                     ],
                   ),
                 );
               },childCount: indianDishes.length),
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       mainAxisSpacing: 10,
                       crossAxisSpacing: 10,
                       childAspectRatio: 1
                   ))
            ],
          ),
        ),
    );
  }
}
