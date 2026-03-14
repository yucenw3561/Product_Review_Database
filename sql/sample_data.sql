-- sql/sample_data.sql

INSERT INTO users (username, email, password_hash) VALUES ('alice01', 'alice@example.com', 'hash1');
INSERT INTO users (username, email, password_hash) VALUES ('bob02', 'bob@example.com', 'hash2');
INSERT INTO users (username, email, password_hash) VALUES ('carol03', 'carol@example.com', 'hash3');

INSERT INTO brands (brand_name) VALUES ('Apple');
INSERT INTO brands (brand_name) VALUES ('Samsung');
INSERT INTO brands (brand_name) VALUES ('Sony');

INSERT INTO categories (category_name) VALUES ('Smartphones');
INSERT INTO categories (category_name) VALUES ('Headphones');
INSERT INTO categories (category_name) VALUES ('Laptops');

INSERT INTO products (product_name, brand_id, category_id, price, release_date)
VALUES ('iPhone 15', 1, 1, 999.99, DATE '2023-09-22');

INSERT INTO products (product_name, brand_id, category_id, price, release_date)
VALUES ('Galaxy S24', 2, 1, 899.99, DATE '2024-01-17');

INSERT INTO products (product_name, brand_id, category_id, price, release_date)
VALUES ('WH-1000XM5', 3, 2, 399.99, DATE '2022-05-12');

INSERT INTO reviews (product_id, user_id, rating, review_title, review_text)
VALUES (1, 1, 5, 'Excellent phone', 'Great battery life and camera quality.');

INSERT INTO reviews (product_id, user_id, rating, review_title, review_text)
VALUES (1, 2, 4, 'Very good but expensive', 'Performance is excellent, but price is high.');

INSERT INTO reviews (product_id, user_id, rating, review_title, review_text)
VALUES (2, 3, 4, 'Solid Android option', 'Display and speed are impressive.');

INSERT INTO reviews (product_id, user_id, rating, review_title, review_text)
VALUES (3, 2, 5, 'Best headphones', 'Noise cancellation is amazing.');

INSERT INTO review_votes (review_id, user_id, is_helpful)
VALUES (1, 2, 'Y');

INSERT INTO review_votes (review_id, user_id, is_helpful)
VALUES (1, 3, 'Y');

INSERT INTO review_votes (review_id, user_id, is_helpful)
VALUES (2, 1, 'Y');

INSERT INTO review_images (review_id, image_url)
VALUES (1, 'https://example.com/review1_img1.jpg');

INSERT INTO review_images (review_id, image_url)
VALUES (4, 'https://example.com/review4_img1.jpg');

COMMIT;