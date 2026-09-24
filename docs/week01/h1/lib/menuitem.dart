class MenuItem  {
  const MenuItem({ required this.name, required this.price, this.discountPercent,  });

  final int price;
  final String name;
  final int? discountPercent;
  
int finalPrice() {
    final diskon = discountPercent;
    if (diskon == null){return price ;}

    return (price - (price * (diskon / 100))).round();
}
}

//gfg
void main() {
    List<MenuItem> item = [];
    item.add(MenuItem(name: 'Kwetiau', price: 15000, discountPercent: 10));
    item.add(MenuItem(name: 'Indomi', price: 5000));
    item.add(MenuItem(name: 'bakso marten spesial', price: 200000, discountPercent: 15));

///AI
var menuMurah = item.where((menu) {
    return menu.finalPrice() <= 15000;
  });

//AI
  int totalPrice = menuMurah.fold(0, (total, menu) {
    return total + menu.finalPrice();
  });

//AI
  menuMurah.map((menu) {
    return '${menu.name} = ${menu.finalPrice()}';
  }).forEach((hasilPrint) {
    print(hasilPrint);
  });


  print('Total Harga = $totalPrice');
}

     