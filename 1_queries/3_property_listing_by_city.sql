-- SELECT properties.id, title, cost_per_night, AVG(property_reviews.rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- HAVING avg(property_reviews.rating) >= 4 
-- ORDER BY cost_per_night
-- LIMIT 10;


  -- SELECT properties.id, title, avg(property_reviews.rating) as average_rating
  -- FROM properties
  -- JOIN property_reviews ON properties.id = property_id
  -- WHERE city LIKE '%ancouv%';
  -- -- AND cost_per_night >= 800
  -- -- AND cost_per_night <= 300;

  -- SELECT title, id 
  -- FROM properties;

  SELECT properties.id, title, avg(property_reviews.rating) as average_rating, owner_id
  FROM properties
  JOIN property_reviews ON properties.id = property_id
  WHERE city LIKE '%ancouv%'
  AND owner_id = 747
  GROUP BY properties.id;