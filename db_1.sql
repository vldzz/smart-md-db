USE mysql;

DROP DATABASE IF EXISTS smart_md;

CREATE DATABASE smart_md;

USE smart_md;

CREATE TABLE color (
    color_id   INT PRIMARY KEY,
    color_name NVARCHAR(20)
);

CREATE TABLE brands (
    brand_id   INT PRIMARY KEY,
    brand_name NVARCHAR(50) NOT NULL
);

CREATE TABLE models (
    model_id   INT PRIMARY KEY,
    model_name NVARCHAR(50) NOT NULL
);

CREATE TABLE os (
    os_id   INT PRIMARY KEY,
    os_name NVARCHAR(50) NOT NULL
);

CREATE TABLE processors (
    processor_id   INT PRIMARY KEY,
    processor_name NVARCHAR(50) NOT NULL
);


CREATE TABLE display_resolution (
    display_res_id INT PRIMARY KEY,
    display_res    NVARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id    INT PRIMARY KEY,
    product_name  NVARCHAR(150) NOT NULL, #TODO: Replace with auto (brand + model + Ram + Memory + color)
    product_price DOUBLE        NOT NULL,
    color_id      INT,                    #FK

    FOREIGN KEY (color_id) REFERENCES color (color_id)
);

CREATE TABLE phones (
    id                    INT PRIMARY KEY AUTO_INCREMENT,
    product_id            INT,          #FK
    brand_id              INT,          #FK
    model_id              INT,          #FK
    os_id                 INT,          #FK
    processor_id          INT,          #FK
    front_camera          NVARCHAR(50), #FK
    back_camera           NVARCHAR(50), #FK
    sim_num               INT DEFAULT 1 NOT NULL,
    battery_capacity      INT           NOT NULL,
    screen_diag           DOUBLE        NOT NULL,
    ram                   INT           NOT NULL,
    internal_memory       INT           NOT NULL,
    display_resolution_id INT,          #FK
    max_frequency         REAL          NOT NULL,

    FOREIGN KEY (product_id) REFERENCES products (product_id),
    FOREIGN KEY (brand_id) REFERENCES brands (brand_id),
    FOREIGN KEY (model_id) REFERENCES models (model_id),
    FOREIGN KEY (os_id) REFERENCES os (os_id),
    FOREIGN KEY (processor_id) REFERENCES processors (processor_id),
    FOREIGN KEY (display_resolution_id) REFERENCES display_resolution (display_res_id)
);

CREATE TABLE notebooks (
    id                    INT PRIMARY KEY AUTO_INCREMENT,
    product_id            INT, #FK
    brand_id              INT, #FK
    model_id              INT, #FK
    dedicated_videocard   BIT DEFAULT 0 NOT NULL,
    processor_id          INT, #FK
    memory                INT           NOT NULL,
    ram                   INT           NOT NULL,
    screen_diag           DOUBLE        NOT NULL,
    display_resolution_id INT, #FK
    os_id                 INT, #FK

    FOREIGN KEY (product_id) REFERENCES products (product_id),
    FOREIGN KEY (brand_id) REFERENCES brands (brand_id),
    FOREIGN KEY (model_id) REFERENCES models (model_id),
    FOREIGN KEY (processor_id) REFERENCES processors (processor_id),
    FOREIGN KEY (display_resolution_id) REFERENCES display_resolution (display_res_id),
    FOREIGN KEY (os_id) REFERENCES os (os_id)
);

CREATE TABLE mouses (
    id          INT PRIMARY KEY AUTO_INCREMENT,
    product_id  INT, #FK
    brand_id    INT, #FK
    is_gaming   BIT NOT NULL,
    is_wireless BIT NOT NULL,

    FOREIGN KEY (product_id) REFERENCES products (product_id),
    FOREIGN KEY (brand_id) REFERENCES brands (brand_id)
)