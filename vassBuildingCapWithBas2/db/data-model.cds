namespace my.sales;

using {
  cuid,
  managed
} from '@sap/cds/common';

entity Orders : cuid, managed {
  soldTo      : Association to Customers;
  title       : String not null;
  products    : Association[1,*] to OrderItems on products.order = $self;
}

entity Customers {
  key email     : String;
      name      : String;
      surname   : String;
}

entity OrderItems {
  key order    : Association to Orders;
  key product  : Association to Products;
}

entity Products {
  key name  : String;
  category  : String;
}