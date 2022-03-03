create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    store     varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id         int auto_increment
        primary key,
    product    varchar(20) null,
    cost       int         null,
    customerId int         null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (customerId) references customers (id)
);

create index customerId
    on orders (customerId);

create table products
(
    id          int auto_increment
        primary key,
    product     int not null,
    customer_id int not null,
    store       int not null,
    constraint id
        unique (id)
);


