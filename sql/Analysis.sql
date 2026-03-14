-- Average rating per product
SELECT p.product_id,
       p.product_name,
       ROUND(AVG(r.rating), 2) AS avg_rating,
       COUNT(r.review_id) AS total_reviews
FROM products p
LEFT JOIN reviews r
    ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
ORDER BY avg_rating DESC NULLS LAST;


-- All reviews with username and product
SELECT u.username,
       p.product_name,
       r.rating,
       r.review_title,
       r.review_date
FROM reviews r
JOIN users u
    ON r.user_id = u.user_id
JOIN products p
    ON r.product_id = p.product_id
ORDER BY r.review_date DESC;


-- Helpful vote counts per review
SELECT r.review_id,
       r.review_title,
       SUM(CASE WHEN rv.is_helpful = 'Y' THEN 1 ELSE 0 END) AS helpful_votes,
       SUM(CASE WHEN rv.is_helpful = 'N' THEN 1 ELSE 0 END) AS not_helpful_votes
FROM reviews r
LEFT JOIN review_votes rv
    ON r.review_id = rv.review_id
GROUP BY r.review_id, r.review_title
ORDER BY helpful_votes DESC;


-- Top-rated products in a category
SELECT c.category_name,
       p.product_name,
       ROUND(AVG(r.rating), 2) AS avg_rating
FROM products p
JOIN categories c
    ON p.category_id = c.category_id
JOIN reviews r
    ON p.product_id = r.product_id
GROUP BY c.category_name, p.product_name
ORDER BY c.category_name, avg_rating DESC;

