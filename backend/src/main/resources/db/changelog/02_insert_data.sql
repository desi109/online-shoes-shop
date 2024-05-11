-- the order of values is related to the name of field.
-- Updating is necessary, if the name is changed


INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483640, '17 Vitosha Blvd, Sofia, 1000', 'customer1@email.com', 'customer1', '0887987654', '2018-03-15 13:01:16.271000', 42.99, 2, '2018-03-15 13:02:52.067000');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483642, '17 Vitosha Blvd, Sofia, 1000', 'customer1@email.com', 'customer1', '0887987654', '2018-03-15 13:01:21.135000', 62.99, 2, '2018-03-15 13:02:09.023000');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483641, '33 Patriarch Evtimii St, Burgas, 8000', 'customer2@email.com', 'customer2', '0885678837', '2018-03-15 12:52:07.428000', 44.99, 2, '2018-03-15 12:52:53.664000');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483645, '33 Patriarch Evtimii St, Burgas, 8000', 'customer2@email.com', 'customer2', '0885678837', '2024-03-15 12:52:29.007000', 240.96, 0, '2018-03-15 12:52:29.007000');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483643, '33 Patriarch Evtimii St, Burgas, 8000', 'customer2@email.com', 'customer2', '0885678837', '2024-03-15 12:52:20.439000', 24.99, 0, '2018-03-15 12:52:20.439000');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483649, '33 Patriarch Evtimii St, Burgas, 8000', 'customer2@email.com', 'customer2', '0885678837', '2018-03-15 12:58:23.824000',196.96, 0, '2018-03-15 12:58:23.824000');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483648, '17 Vitosha Blvd, Sofia, 1000', 'customer1@email.com', 'customer1', '0887987654', '2018-03-15 13:01:06.943000', 44.99, 1, '2018-03-15 13:02:56.498000');
INSERT INTO public.order_main (order_id, buyer_address, buyer_email, buyer_name, buyer_phone, create_time, order_amount, order_status, update_time) VALUES (2147483647, '33 Patriarch Evtimii St, Burgas, 8000', 'customer2@email.com', 'customer2', '0885678837', '2018-03-15 12:52:35.289000', 64.99, 2, '2018-03-15 12:52:55.919000');

-- ----------------------------
-- Table structure for product_category

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO public.product_category (category_id, category_name, category_type, create_time, update_time) VALUES (2147483641, 'Man', 0, '2024-03-09 23:03:26.000000', '2024-03-10 00:15:27.000000');
INSERT INTO public.product_category (category_id, category_name, category_type, create_time, update_time) VALUES (2147483645, 'Woman', 1, '2024-03-10 00:26:05.000000', '2024-03-10 00:26:05.000000');


-- ----------------------------
-- Records of product_in_order
-- ----------------------------
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483642, 0,1,'WHITE/PINK REBOUND V6 LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2218536_H1.jpg', 'B0001', 'Puma', 44.99, 101,  NULL, 2147483641, 40);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483644, 1,1, 'LADIES FILA WHITE/ GOLD LACE-UP TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--1916776_H1.jpg', 'B0002', 'FILA', 24.99, 100,  NULL, 2147483643, 38);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483646, 0,1, 'WHITE/GREEN COURT VISION LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279394_H1.jpg', 'F0001', 'Nike', 62.99, 79,  NULL, 2147483645, 43);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483648, 0,1,'VIS2K BLACK/LIME TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2284616_H1.jpg', 'D0002', 'Puma', 64.99, 91, NULL, 2147483647, 44);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483640, 0,1, 'WHITE/GREEN COURT VISION LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279394_H1.jpg', 'F0001', 'Nike', 62.99, 79, NULL, 2147483649, 45);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483641, 1,1, 'WOMEN''S WHITE/GOLD COURT TRAINER', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2288263_H1.jpg', 'C0002', 'Graceland', 27.99, 120, NULL, 2147483649, 43);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483632, 0,1, 'FILA NEW BLACK/WHITE LACE-UP RUNNING TRAINER', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2167094_H1.jpg', 'F0002', 'FILA', 42.99, 60, NULL, 2147483649, 40);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483643, 1,1, 'WHITE/PINK REBOUND V6 LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2218536_H1.jpg', 'B0001', 'Puma', 44.99, 101, NULL, 2147483648, 38);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483634, 1,1, 'Under COURT VISION LOW WHITE/FUCHSIA TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279381_H1.jpg', 'C0001', 'Nike', 62.99, 45, NULL, 2147483649, 37);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483647, 0,1, 'VIS2K BLACK/LIME TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2284616_H1.jpg', 'D0002', 'Puma', 64.99, 91, NULL, 2147483645, 43);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483638, 0,1, 'AIR MAX SC OLIVE/WHITE TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279401_H1.jpg', 'B0004', 'Nike', 67.99, 128, NULL, 2147483645, 45);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483649, 1,1, 'WHITE/PINK REBOUND V6 LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2218536_H1.jpg', 'B0001', 'Puma', 44.99, 101, NULL, 2147483645, 39);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483631, 0,1, 'FILA NEW BLACK/WHITE LACE-UP RUNNING TRAINER', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2167094_H1.jpg', 'F0002', 'FILA', 42.99, 60, NULL, 2147483640, 44);
INSERT INTO public.product_in_order (id, category_type, count, product_description, product_icon, product_id, product_name, product_price, product_stock, cart_user_id, order_id, product_size) VALUES (2147483633, 0,1, 'WHITE/GREEN COURT VISION LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279394_H1.jpg', 'F0001', 'Nike', 62.99, 79, NULL, 2147483642, 43);


-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('B0004', 0, '2024-03-10 10:39:29.000000', 'AIR MAX SC OLIVE/WHITE TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279401_H1.jpg', 'Nike', 67.99, 0, 128, '2024-03-10 10:39:32.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('B0002', 1, '2024-03-10 10:35:43.000000', 'LADIES FILA WHITE/ GOLD LACE-UP TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--1916776_H1.jpg', 'FILA', 24.99, 0, 100, '2024-03-10 10:35:43.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('D0002', 0, '2024-03-10 12:08:17.000000', 'VIS2K BLACK/LIME TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2284616_H1.jpg', 'Puma', 64.99, 0, 91, '2024-03-10 12:08:17.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('F0001', 0, '2024-03-10 12:15:05.000000', 'WHITE/GREEN COURT VISION LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279394_H1.jpg', 'Nike', 62.99, 0, 79, '2024-03-10 12:15:10.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('C0002', 1, '2024-03-10 12:11:51.000000', 'WOMEN''S WHITE/GOLD COURT TRAINER', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2288263_H1.jpg', 'Graceland', 27.99, 0, 120, '2024-03-10 12:11:51.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('F0002', 0, '2024-03-10 12:16:44.000000', 'FILA NEW BLACK/WHITE LACE-UP RUNNING TRAINER', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2167094_H1.jpg', 'FILA', 42.99, 0, 60, '2024-03-10 12:16:44.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('B0001', 1, '2024-03-10 06:44:25.000000', 'WHITE/PINK REBOUND V6 LOW TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2218536_H1.jpg', 'Puma', 44.99, 0, 101, '2024-03-10 06:44:25.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('D0001', 1, '2024-03-10 06:51:03.000000', 'REBOUND PLATFORM ABSTRACT BLACK/WHITE TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2287186_H1.jpg', 'Champion', 39.99, 0, 100, '2024-03-10 12:04:13.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('C0001', 1, '2024-03-10 12:09:41.000000', 'Under COURT VISION LOW WHITE/FUCHSIA TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2279381_H1.jpg', 'Nike', 62.99, 0, 45, '2024-03-10 12:09:41.000000');
INSERT INTO public.product_info (product_id, category_type, create_time, product_description, product_icon, product_name, product_price, product_status, product_stock, update_time) VALUES ('C0003', 1, '2024-03-10 12:12:46.000000', 'LIGHTWEIGHT SKECHERS ROSE TRAINERS', 'https://media.deichmann.com/asset/deichmann/product-h6/p_mosaic_pd/--2270827_H1.jpg', 'Skechers', 34.99, 0, 222, '2024-03-10 12:12:46.000000');

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483641, 't', '17 Vitosha Blvd, Sofia, 1000', 'customer1@email.com', 'customer1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '0887987654', 'ROLE_CUSTOMER');
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483642, 't', '120 Tsarigradsko Shose, Plovdiv, 4000', 'manager1@email.com', 'manager1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '0879123456', 'ROLE_MANAGER');
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483643, 't', '45 Slivnitsa Blvd, Varna, 9000', 'employee1@email.com', 'employee1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '0898456123', 'ROLE_EMPLOYEE');
INSERT INTO public.users (id, active, address, email, name, password, phone, role) VALUES (2147483645, 't', '33 Patriarch Evtimii St, Burgas, 8000', 'customer2@email.com', 'customer2', '$2a$10$0oho5eUbDqKrLH026A2YXuCGnpq07xJpuG/Qu.PYb1VCvi2VMXWNi', '0885678837', 'ROLE_CUSTOMER');

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO public.cart (user_id) VALUES (2147483641);
INSERT INTO public.cart (user_id) VALUES (2147483642);
INSERT INTO public.cart (user_id) VALUES (2147483643);
INSERT INTO public.cart (user_id) VALUES (2147483645);
