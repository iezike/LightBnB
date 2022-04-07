SELECT reservations.id , properties.title as title, reservations.start_date start_date, properties.cost_per_night as cost_per_night,  AVG(property_reviews.rating)
FROM property_reviews
JOIN reservations ON reservation_id = reservations.id
JOIN properties ON reservations.property_id = properties.id
GROUP BY property_reviews.property_id;


