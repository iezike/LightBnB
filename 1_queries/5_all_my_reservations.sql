-- SELECT reservations.id , properties.title as title, reservations.start_date start_date, properties.cost_per_night as cost_per_night,  AVG(property_reviews.rating)
-- FROM property_reviews
-- JOIN reservations ON reservation_id = reservations.id
-- JOIN properties ON reservations.property_id = properties.id
-- GROUP BY property_reviews.property_id;


-- SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
-- FROM reservations
-- JOIN properties ON reservations.property_id = properties.id
-- JOIN property_reviews ON properties.id = property_reviews.property_id
-- WHERE reservations.guest_id = 1
-- GROUP BY properties.id, reservations.id
-- ORDER BY reservations.start_date
-- LIMIT 10;

-- SELECT * 
-- FROM reservations
-- WHERE guest_id = $1
-- LIMIT $2;


-- SELECT properties.*, reservations.*, ROUND(AVG(rating),2) as average_rating
--   FROM properties
--   JOIN reservations ON reservations.property_id = properties.id
--   JOIN users ON guest_id = users.id
--   JOIN property_reviews ON property_reviews.property_id = properties.id
--   WHERE users.id = $1
--   AND end_date < now()::date
--   GROUP BY properties.id, reservations.id
--   ORDER BY start_date
--   LIMIT $2;


SELECT properties.title, properties.cost_per_night, reservations.start_date, reservations.end_date, avg(rating) as average_rating, properties.number_of_bathrooms, properties.number_of_bedrooms,  properties.cover_photo_url, properties.parking_spaces 
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;