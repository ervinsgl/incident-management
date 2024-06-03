using my.sales as my from '../db/data-model';

service SalesService @(impl: 'srv/sales-service.js') {
    entity Orders as projection on my.Orders;
    entity Customers as projection on my.Customers;
    entity Products as projection on my.Products;
    entity OrderItems as projection on my.OrderItems;
}
