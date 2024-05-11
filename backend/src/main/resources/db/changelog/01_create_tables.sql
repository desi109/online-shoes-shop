CREATE SEQUENCE  IF NOT EXISTS hibernate_sequence START WITH 1 INCREMENT BY 1;

CREATE TABLE cart (user_id BIGINT NOT NULL, CONSTRAINT pk_cart PRIMARY KEY (user_id));

CREATE TABLE order_main (order_id BIGINT NOT NULL, buyer_email VARCHAR(255), buyer_name VARCHAR(255),
                         buyer_phone VARCHAR(255), buyer_address VARCHAR(255), create_time TIMESTAMP WITHOUT TIME ZONE,
                         order_amount DECIMAL NOT NULL, order_status INTEGER DEFAULT 0 NOT NULL, update_time TIMESTAMP WITHOUT TIME ZONE,
                         CONSTRAINT pk_ordermain PRIMARY KEY (order_id));

CREATE TABLE product_category (category_id INTEGER NOT NULL, category_name VARCHAR(255), category_type INTEGER,
                               create_time TIMESTAMP WITHOUT TIME ZONE, update_time TIMESTAMP WITHOUT TIME ZONE,
                               CONSTRAINT pk_productcategory PRIMARY KEY (category_id));

CREATE TABLE product_in_order (id BIGINT NOT NULL, cart_user_id BIGINT, order_id BIGINT, product_id VARCHAR(255),
                               product_name VARCHAR(255), product_description VARCHAR(255) NOT NULL, product_icon VARCHAR(255),
                               category_type INTEGER NOT NULL, product_price DECIMAL NOT NULL, product_stock INTEGER,
                               count INTEGER, product_size INTEGER, CONSTRAINT pk_productinorder PRIMARY KEY (id));

CREATE TABLE product_info (product_id VARCHAR(255) NOT NULL, product_name VARCHAR(255) NOT NULL, product_price DECIMAL NOT NULL,
                           product_stock INTEGER NOT NULL, product_description VARCHAR(255), product_icon VARCHAR(255),
                           product_status INTEGER DEFAULT 0, category_type INTEGER DEFAULT 0, create_time TIMESTAMP WITHOUT TIME ZONE,
                           update_time TIMESTAMP WITHOUT TIME ZONE, CONSTRAINT pk_productinfo PRIMARY KEY (product_id));

CREATE TABLE users (id BIGINT NOT NULL, email VARCHAR(255), password VARCHAR(255), name VARCHAR(255), phone VARCHAR(255),
                    address VARCHAR(255), active BOOLEAN NOT NULL, role VARCHAR(255), CONSTRAINT pk_users PRIMARY KEY (id));

ALTER TABLE product_category ADD CONSTRAINT uc_productcategory_categorytype UNIQUE (category_type);

ALTER TABLE users ADD CONSTRAINT uc_users_email UNIQUE (email);

ALTER TABLE cart ADD CONSTRAINT FK_CART_ON_USER FOREIGN KEY (user_id) REFERENCES users (id);

ALTER TABLE product_in_order ADD CONSTRAINT FK_PRODUCTINORDER_ON_CART_USER FOREIGN KEY (cart_user_id) REFERENCES cart (user_id);

ALTER TABLE product_in_order ADD CONSTRAINT FK_PRODUCTINORDER_ON_ORDER FOREIGN KEY (order_id) REFERENCES order_main (order_id);

