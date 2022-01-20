USE smart_md;

INSERT INTO color(color_id, color_name)
VALUES (1, 'black'),
       (2, 'silver'),
       (3, 'green'),
       (4, 'red'),
       (5, 'purple'),
       (6, 'white'),
       (7, 'pink'),
       (8, 'blue'),
       (9, 'yellow');

INSERT INTO brands(brand_id, brand_name)
VALUES (1, 'Apple'),
       (2, 'Samsung'),
       (3, 'Xiaomi'),
       (4, 'Oppo'),
       (5, 'Huawei'),
       (6, 'OnePlus'),
       (7, 'HTC'),
       (8, 'Asus'),
       (9, 'HP'),
       (10, 'Lenovo'),
       (11, 'Razer'),
       (12, 'Logitech');

INSERT INTO models(model_id, model_name)
VALUES (1, 'Redmi 9A'),
       (2, 'Poco M4 Pro'),
       (3, '11'),
       (4, 'E410MA-EB268 14'),
       (5, '250 G8'),
       (6, 'IdeaPad 3 15IGL05'),
       (7, 'DeathAdder Essential'),
       (8, 'G305 LightSpeed Hero'),
       (9, 'Viper Ultimate Dock');

INSERT INTO os(os_id, os_name)
VALUES (1, 'Windows'),
       (2, 'Linux'),
       (3, 'Android'),
       (4, 'iOS'),
       (5, 'No-OS');

INSERT INTO processors(processor_id, processor_name)
VALUES (1, 'Snapdragon'),
       (2, 'Exynos'),
       (3, 'Kirin'),
       (4, 'A13 Bionic'),
       (5, 'Intel-Core-i3'),
       (6, 'Intel-Core-i5'),
       (7, 'Intel-Core-i7'),
       (8, 'Intel-Core-i9'),
       (9, 'AMD-Ryzen-5'),
       (10, 'AMD-Ryzen-7'),
       (11, 'AMD-Ryzen-9'),
       (12, 'Pentium');

INSERT INTO display_resolution(display_res_id, display_res)
VALUES (1, '720x1600'),
       (2, '10802400'),
       (3, '1366x768'),
       (4, '1920x1080'),
       (5, '2560x1440'),
       (6, '3840x2400'),
       (7, '3000x2000'),
       (8, '2304x1440'),
       (9, '828x1792');

INSERT INTO products(product_id, product_name, product_price, color_id)
VALUES (1, 'Xiaomi Redmi 9A 2/32GB', 2249, 8),
       (2, 'Xiaomi Poco M4 Pro 5G Dual Sim 4/64GB', 4499, 1),
       (3, 'Apple iPhone 11 64GB', 11999, 7),
       (4, 'Asus E410MA-EB268 14 / Pentium N5030 / 8GB / 128GB SSD', 6490, 1),
       (5, 'Laptop HP 250 G8 / Intel Core i3 / 4GB / 1TB HDD / Free DOS', 6990, 2),
       (6, 'Laptop Lenovo IdeaPad 3 15IGL05 / Celeron N4020 / 15,6 / 4GB / 256GB SSD', 6290, 2),
       (7, 'Mouse gaming Razer DeathAdder Essential 2021', 769, 6),
       (8, 'Mouse gaming wireless Logitech G305 LightSpeed Hero 12K DPI', 1293, 1),
       (9, 'Mouse gaming wireless Razer Viper Ultimate Dock, Ultrausor 74g, iluminare Chroma RGB, Cyberpunk 2077 Ed.',
        5381, 9);

INSERT INTO phones(product_id, brand_id, model_id, os_id, processor_id, front_camera, back_camera,
                   battery_capacity, screen_diag, ram, internal_memory,
                   display_resolution_id, max_frequency)
VALUES (1, 3, 1, 3, 3, '5Mp', '12 Mp', 5000, 6.53, 2, 32, 1, 2.0),
       (2, 3, 2, 3, 3, 'Single', 'Dual', 0, 6.6, 4, 64, 2, 2.4),
       (3, 1, 3, 4, 4, '12Mp', '12Mp + 12Mp', 3100, 6.1, 4, 64, 9, 2.65);



INSERT INTO notebooks(product_id, brand_id, model_id, dedicated_videocard, processor_id, memory, ram,
                      screen_diag, display_resolution_id, os_id)
VALUES (4, 8, 4, DEFAULT, 12, 128, 8, 15.6, 3, 1),
       (5, 9, 5, DEFAULT, 5, 1000, 4, 15.6, 3, 1),
       (6, 10, 6, 1, 12, 256, 4, 15.6, 4, 2);


INSERT INTO mouses(product_id, brand_id, is_gaming, is_wireless)
VALUES (7, 7, 1, 0),
       (8, 8, 1, 1),
       (9, 9, 1, 1);

