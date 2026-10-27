sql
-- StrataScratch
-- Airbnb
-- ID 10078
-- Matching Similar Hosts and Guests
-- Medium

SELECT DISTINCT host_id, guest_id
FROM airbnb_hosts
 INNER JOIN airbnb_guests ON airbnb_hosts.nationality = airbnb_guests.nationality 
 AND airbnb_hosts.gender = airbnb_guests.gender
