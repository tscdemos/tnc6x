using { bikestore } from '../db/schema.cds';

service bikestoreSrv {
  entity Product as projection on bikestore.Product;
}