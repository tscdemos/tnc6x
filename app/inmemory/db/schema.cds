namespace bikestore;

entity Product {
  key ID: UUID;
  productName: String(200);
  productDescription: String(500);
  productPrice: Decimal(10,2);
}

