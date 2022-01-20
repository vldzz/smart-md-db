USE mysql;

DROP DATABASE IF EXISTS smart_md

CREATE DATABASE smart_md;

USE smart_md;

CREATE TABLE products
(
    product_id    INT PRIMARY KEY,
    product_name  NVARCHAR(50) NOT NULL,
    product_price DOUBLE
);

CREATE TABLE phone_brands
(
    phone_brand_id   INT PRIMARY KEY,
    phone_brand_name NVARCHAR(50)
);

CREATE TABLE phone_models
(
    phone_model_id   INT PRIMARY KEY,
    phone_model_name NVARCHAR(50)
);

CREATE TABLE os
(
    os_id   INT PRIMARY KEY,
    os_name NVARCHAR(50)
);

CREATE TABLE processors
(
    processor_id   INT PRIMARY KEY,
    processor_name NVARCHAR(50)
);

CREATE TABLE battery_type
(
    battery_type_id   INT PRIMARY KEY,
    battery_type_name NVARCHAR(50)
);

CREATE TABLE camera
(
    camera_id   INT PRIMARY KEY,
    camera_name NVARCHAR(50)
);

CREATE TABLE color
(
    color_id   INT PRIMARY KEY,
    color_name NVARCHAR(20)
);

CREATE TABLE phones
(
    phone_id                   INT PRIMARY KEY,
    product_id                 INT, #FK
    phone_brand_id             INT, #FK
    phone_model_id             INT, #FK
    phone_os_id                INT, #FK
    phone_processor_id         INT, #FK
    phone_front_camera_id      INT, #FK
    phone_back_camera_id       INT, #FK
    phone_sim_num              INT DEFAULT 1,
    phone_battery_capacity     INT         NOT NULL,
    phone_battery_type_id      INT, #FK
    phone_screen_diag          NVARCHAR(4) NOT NULL,
    phone_ram_capacity         INT         NOT NULL,
    phone_internal_memory      INT         NOT NULL,
    phone_color_id             INT, #FK
    phone_height               INT         NOT NULL,
    phone_screen_pixel_density INT         NOT NULL,
    phone_max_frequency        REAL        NOT NULL,

    FOREIGN KEY (product_id) REFERENCES products (product_id),
    FOREIGN KEY (phone_brand_id) REFERENCES phone_brands (phone_brand_id),
    FOREIGN KEY (phone_model_id) REFERENCES phone_models (phone_model_id),
    FOREIGN KEY (phone_os_id) REFERENCES os (os_id),
    FOREIGN KEY (phone_processor_id) REFERENCES processors (processor_id),
    FOREIGN KEY (phone_front_camera_id) REFERENCES camera (camera_id),
    FOREIGN KEY (phone_front_camera_id) REFERENCES camera (camera_id),
    FOREIGN KEY (phone_battery_type_id) REFERENCES battery_type (battery_type_id),
    FOREIGN KEY (phone_color_id) REFERENCES color (color_id)
);
