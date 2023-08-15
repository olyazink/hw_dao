create schema hw_netology_dao;

create table customers
(
    id           SERIAL PRIMARY KEY,
    NAME         varchar(30),
    surname      varchar(30),
    age          int,
    phone_number varchar(11)
);

insert INTO customers (name, surname, age, phone_number)
VALUES ('Петр', 'Первый', 30, '123'),
       ('Иван', 'Дурак', 25, '1234'),
       ('Степан', 'Большой', 55, '114'),
       ('Оксана', 'Меньшова', 25, '1134');

CREATE TABLE ORDERS
(
    id           SERIAL PRIMARY KEY,
    DATE         DATE,
    customer_id  int REFERENCES customers (id),
    product_name varchar(11),
    amount       int
);

insert INTO ORDERS (date, customer_id, product_name, amount)
VALUES
    ('2020-12-12', 1, 'молоко', 10),
    ('2020-10-10', 2, 'хлеб', 5),
    ('2020-01-01', 1, 'колбаса', 20);