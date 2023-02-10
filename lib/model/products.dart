class Products {
  String name;
  String price;
  String image;
  String sold;
  String description;

  Products({
    required this.name,
    required this.price,
    required this.image,
    required this.sold,
    required this.description,
  });
}

var productsList = [
  Products(
    name: 'Sarung Tangan INGCO Cut-Resistant',
    price: 'Rp 100.000',
    image: 'images/produk1.png',
    sold: '13',
    description: 'Sarum Tangan INGCO Cut-Resistant anti gores, anti luka, anti serangga, anti debu, anti air, anti panas, dan anti dingin',
  ),
  Products(
    name: 'Pupuk Organik Kilat Hormon - 1000 ml',
    price: 'Rp 30.000',
    image: 'images/produk2.png',
    sold: '20',
    description: 'Pupuk Organik Kilat Hormon - 1000 ml adalah pupuk organik yang mengandung hormon yang dapat meningkatkan pertumbuhan tanaman',
  ),
  Products(
    name: 'Benih Cabe Rawit Dewata 43 F1 Isi 2250 Biji',
    price: 'Rp 45.000',
    image: 'images/produk3.png',
    sold: '7',
    description: 'Benih Cabe Rawit Dewata 43 F1 Isi 2250 Biji adalah benih cabe rawit yang memiliki tingkat kematangan yang tinggi',
  ),
  Products(
    name: 'EM4 1 liter pupuk organik perikanan peternakan',
    price: 'Rp 24.000',
    image: 'images/produk4.png',
    sold: '72',
    description: 'EM4 1 liter pupuk organik perikanan peternakan adalah pupuk organik yang dapat digunakan untuk berbagai jenis tanaman',
  ),
];
