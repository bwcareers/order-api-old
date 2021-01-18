
CREATE TABLE IF NOT EXISTS customer (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL
);

INSERT INTO customer (first_name, last_name) VALUES
  ('Aliko', 'Dangote'),
  ('Bill', 'Gates'),
  ('Folrunsho', 'Alakija'),
  ('Jeff', 'Bezos');


CREATE TABLE IF NOT EXISTS product (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL
);

INSERT INTO product (name) VALUES
  ('Ferrari Spider'),
  ('Range Rover Velar'),
  ('Mercedes S Class'),
  ('Rolls Royce Ghost');

CREATE TABLE IF NOT EXISTS order_detail (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  customer_id int  NOT NULL,
  product_id int NOT NULL
);

ALTER TABLE order_detail ADD FOREIGN KEY ( customer_id ) REFERENCES customer( id ) ;
ALTER TABLE order_detail ADD FOREIGN KEY ( product_id ) REFERENCES product( id ) ;


INSERT INTO order_detail (customer_id, product_id) VALUES
  (1,1),
  (1,2);
