class Product {
  final String name;
  final String image;
  final String description;
  final String price;
  final String reviews;
  final String imagedetails;

  static var length;

  Product({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.reviews,
    required this.imagedetails,
  });
}

// لیست مدل‌ها
final List<Product> models = [
  Product(
      name: 'FashionNFT',
      image: 'assets/images/model1.png',
      description:
          'Model 1 is a classic NFT with a starting price of, offering great investment potential.',
      price: '\$1200',
      reviews: '(185 reviews)',
      imagedetails:
          'FashionNFT is a unique digital model created by blending art and blockchain technology. It is an ideal choice for collectors looking to invest in the future.'),
  Product(
      name: 'FashionCity',
      image: 'assets/images/model2.png',
      description:
          'Model 2 is a classic NFT with a starting price of, offering great investment potential.',
      price: '\$1400',
      reviews: '(320 reviews)',
      imagedetails:
          'FashionCity is inspired by modern urban styles, showcasing dynamism and innovation through its unique design. If you love futuristic aesthetics, this model is perfect for you!'),
  Product(
      name: 'HumenModel',
      image: 'assets/images/model3.png',
      description:
          'Model 3 is an exclusive design, crafted for collectors who seek uniqueness and value.',
      price: '\$1600',
      reviews: '(410 reviews)',
      imagedetails:
          'HumenModel is a digital artwork that reflects precision and elegance in virtual face design. This model is a fusion of beauty and technology, created for digital art enthusiasts.'),
  Product(
      name: 'FashionALL',
      image: 'assets/images/model4.png',
      description:
          'Model 4 combines elegance and rarity, making it a desirable choice for enthusiasts.',
      price: '\$1800',
      reviews: '(876 reviews)',
      imagedetails:
          'FashionALL is a unique collection of diverse and creative designs that represent various cultures in a digital model. It’s an excellent choice for those who appreciate distinctive styles!'),
  Product(
      name: 'FashionWorld',
      image: 'assets/images/model5.png',
      description:
          'Model 5 is known for its futuristic design and limited availability, ideal for investors.',
      price: '\$2000',
      reviews: '(925 reviews)',
      imagedetails:
          'FashionWorld redefines digital fashion with a fresh perspective. Its design is inspired by global fashion trends, offering a glimpse into an exciting and innovative future.'),
];
