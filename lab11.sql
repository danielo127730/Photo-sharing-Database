-- Drop the 'users' table if it exists
DROP TABLE IF EXISTS likes,photos,users,follow;



-- Create the 'users' table with columns 'userID', 'username', 'signup_date', and set a composite primary key on 'userID' and 'username'
CREATE TABLE users (userID VARCHAR(30), username CHAR(20) not null unique , signup_date DATE, PRIMARY KEY(userID));

-- Create the 'photos' table with columns 'Photo_ID', 'URL', 'userID', 'public_date', and set a composite primary key on 'userID' and 'Photo_ID'
CREATE TABLE photos (Photo_ID VARCHAR(30), URL VARCHAR(1000), userID VARCHAR(30), public_date DATE, PRIMARY KEY(Photo_ID));

-- Create the 'likes' table with columns 'Photo_ID', 'userID', 'Liked', and set a composite primary key on 'userID' and 'Photo_ID'
CREATE TABLE likes (Photo_ID VARCHAR(30), userID VARCHAR(30), Liked DATE, PRIMARY KEY(userID, Photo_ID));

CREATE TABLE follow (follower_ID VARCHAR(30), followee_ID VARCHAR(30), datefollow timestamp(0), PRIMARY KEY(follower_ID, followee_ID), FOREIGN KEY (follower_id) REFERENCES users(userID),
    FOREIGN KEY (followee_id) REFERENCES users(userID));
   
 ALTER TABLE photos 
ADD CONSTRAINT fk_photos_users
FOREIGN KEY (userID)
REFERENCES users(userID);

ALTER TABLE likes
ADD CONSTRAINT fk_likes_users
FOREIGN KEY (userID)
REFERENCES users(userID);

ALTER TABLE likes
ADD CONSTRAINT fk_likes_photos
FOREIGN KEY (Photo_ID)
REFERENCES photos(Photo_ID);


-- Insert data into the 'users' table
INSERT INTO users VALUES
  ('User1234', 'ThunderPanda88', '2002-12-09'),
  ('Alpha456', 'MysticShadow21', '2002-12-09'),
  ('Beta789', 'CosmicDreamer42', '2002-12-09'),
  ('Gamma321', 'Tylerfox23', '2002-12-09'),
  ('Delta654', 'SilverSerpent17', '2002-12-09'),
  ('Omega987', 'NatureLover99', '2003-01-15'),
  ('Sparkle123', 'ArtisticSoul', '2003-02-20'),
  ('Nebula456', 'MusicLover', '2003-03-10'),
  ('Quantum789', 'TechGeek', '2003-04-05'),
  ('Nova321', 'Fashionista', '2003-05-25'),
  ('Eclipse654', 'FitnessFanatic', '2003-06-30'),
  ('Voyager987', 'TravelBug', '2003-07-12'),
  ('Celestial123', 'FoodieDelight', '2003-08-17'),
  ('Horizon456', 'PetLover', '2003-09-05'),
  ('Nebula789', 'GamerPro', '2003-10-01');

 
insert into users (userID, username, signup_date) values ('Stardust321', 'gbrussell0', '2023-07-10');
insert into users (userID, username, signup_date) values ('Phoenix654', 'rmickan', '2023-10-07');
insert into users (userID, username, signup_date) values ('Comet987', 'mvernon2', '2023-08-10');
insert into users (userID, username, signup_date) values ('Astral123', 'rstrongitharm3', '2023-09-30');
insert into users (userID, username, signup_date) values ('Orion456', 'hpodbury4', '2023-09-23');
insert into users (userID, username, signup_date) values ('Spectrum789', 'pmattack5', '2023-06-29');
insert into users (userID, username, signup_date) values ('Galaxy321', 'kszymanski6', '2022-12-01');
insert into users (userID, username, signup_date) values ('Infinity654', 'pdemullett7', '2022-12-17');
insert into users (userID, username, signup_date) values ('Cosmic987', 'lbaggett8', '2022-11-24');
insert into users (userID, username, signup_date) values ('Quasar123', 'nplowes9', '2023-01-12');
insert into users (userID, username, signup_date) values ('Radiant456', 'tester', '2023-01-12');



 
-- Insert data into the 'photos' table
INSERT INTO photos VALUES
  ('369852147', 'randomUrl.com', 'User1234', '1997-12-09'),
  ('135792468', 'randomUrl.com', 'Alpha456', '2002-12-09'),
  ('246813579', 'randomUrl.com', 'Beta789', '2002-12-09'),
  ('246813544', 'randomUrl.com', 'Gamma321', '2002-12-09'),
  ('543210987', 'randomUrl.com', 'Delta654', '2002-12-09'),
  ('987654321', 'example.com/1', 'Omega987', '2003-01-15'),
  ('123456789', 'example.com/2', 'Sparkle123', '2003-02-20'),
  ('123456780', 'example.com/D', 'Nebula456', '2003-02-20'),
  ('456789123', 'example.com/3', 'Quantum789', '2003-03-10'),
  ('789123456', 'example.com/4', 'Nova321', '2003-04-05'),
  ('321654987', 'example.com/5', 'Eclipse654', '2003-05-25'),
  ('654987321', 'example.com/6', 'Voyager987', '2003-06-30'),
  ('123987456', 'example.com/7', 'Celestial123', '2003-07-12'),
  ('987321654', 'example.com/8', 'Horizon456', '2003-08-17'),
  ('654321987', 'example.com/9', 'Nebula789', '2003-09-05'),
  ('321987654', 'example.com/10', 'Stardust321', '2003-10-01');

 
insert into photos (Photo_ID, URL, userID, public_date) values ('215.129.51.36/9', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 'Phoenix654', '2022-11-22');
insert into photos (Photo_ID, URL, userID, public_date) values ('153.100.163.254/2', 'http://dummyimage.com/249x100.png/cc0000/ffffff', 'Comet987', '2023-07-11');
insert into photos (Photo_ID, URL, userID, public_date) values ('191.4.243.110/30', 'http://dummyimage.com/100x100.png/ff4444/ffffff', 'Astral123', '2023-09-26');
insert into photos (Photo_ID, URL, userID, public_date) values ('11.160.53.252/22', 'http://dummyimage.com/195x100.png/cc0000/ffffff', 'Orion456', '2023-01-04');
insert into photos (Photo_ID, URL, userID, public_date) values ('6.182.19.235/12', 'http://dummyimage.com/219x100.png/dddddd/000000', 'Spectrum789', '2022-10-20');
insert into photos (Photo_ID, URL, userID, public_date) values ('135.22.252.89/2', 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'Galaxy321', '2023-01-16');
insert into photos (Photo_ID, URL, userID, public_date) values ('70.53.197.216/1', 'http://dummyimage.com/236x100.png/ff4444/ffffff', 'Infinity654', '2022-10-13');
insert into photos (Photo_ID, URL, userID, public_date) values ('210.112.56.41/9', 'http://dummyimage.com/242x100.png/ff4444/ffffff', 'Cosmic987', '2023-01-06');
insert into photos (Photo_ID, URL, userID, public_date) values ('178.240.18.110/12', 'http://dummyimage.com/161x100.png/cc0000/ffffff', 'Quasar123', '2023-06-17');
insert into photos (Photo_ID, URL, userID, public_date) values ('237.223.138.167/29', 'http://dummyimage.com/249x100.png/cc0000/ffffff', 'Radiant456', '2023-09-16');


-- Insert data into the 'likes' table
INSERT INTO likes VALUES
  ('369852147', 'User1234', '2002-12-09'),
  ('135792468', 'Alpha456', '2002-12-09'),
  ('246813579', 'Beta789', '2002-12-09'),
  ('246813544', 'Gamma321', '2002-12-09'),
  ('543210987', 'Delta654', '2002-12-09'),
  ('987654321', 'Omega987', '2003-02-15'), -- John likes his own photo
  ('123456789', 'Sparkle123', '2003-02-22'), -- Sara likes her own photo
  ('456789123', 'Nebula456', '2003-03-11'), -- Lisa likes her own photo
  ('789123456', 'Quantum789', '2003-04-06'), -- Chris likes his own photo
  ('321654987', 'Nova321', '2003-05-26'), -- Emily likes her own photo
  ('654987321', 'Eclipse654', '2003-06-30'), -- Robert likes his own photo
  ('123987456', 'Voyager987', '2003-07-12'), -- Julia likes her own photo
  ('987321654', 'Celestial123', '2003-08-17'), -- Mark likes his own photo
  ('654321987', 'Horizon456', '2003-09-05'), -- Natalie likes her own photo
  ('321987654', 'Nebula789', '2003-10-01'); -- Andrew likes his own photo
 
insert into likes (Photo_ID, userID, Liked) values ('215.129.51.36/9', 'Stardust321', '2023-09-05');
insert into likes (Photo_ID, userID, Liked) values ('153.100.163.254/2', 'Phoenix654', '2022-10-31');
insert into likes (Photo_ID, userID, Liked) values ('191.4.243.110/30', 'Comet987', '2022-10-29');
insert into likes (Photo_ID, userID, Liked) values ('11.160.53.252/22', 'Astral123', '2023-07-30');
insert into likes (Photo_ID, userID, Liked) values ('6.182.19.235/12', 'Orion456', '2023-02-04');
insert into likes (Photo_ID, userID, Liked) values ('135.22.252.89/2', 'Spectrum789', '2023-05-17');
insert into likes (Photo_ID, userID, Liked) values ('70.53.197.216/1', 'Galaxy321', '2022-12-23');
insert into likes (Photo_ID, userID, Liked) values ('210.112.56.41/9', 'Infinity654', '2023-05-31');
insert into likes (Photo_ID, userID, Liked) values ('178.240.18.110/12', 'Cosmic987', '2023-04-10');
insert into likes (Photo_ID, userID, Liked) values ('237.223.138.167/29', 'Quasar123', '2022-12-09');
insert into likes (Photo_ID, userID, Liked) values ('237.223.138.167/29', 'Radiant456', '2022-12-09');

 
 
 INSERT INTO follow VALUES
    ('User1234', 'User1234', '2023-10-03 12:00'),
    ('Alpha456', 'Alpha456', '2023-10-03 12:15'),
    ('Beta789', 'Beta789', '2023-10-03 12:30'),
    ('Gamma321', 'Gamma321', '2023-10-03 12:45'),
    ('Delta654', 'Delta654', '2023-10-03 13:00'),
    ('Omega987', 'Omega987', '2023-10-03 13:15'),
    ('Sparkle123', 'Sparkle123', '2023-11-03 14:00'),
	('Nebula456', 'Nebula456', '2023-11-03 14:15'),
	('Quantum789', 'Quantum789', '2023-11-03 14:30'),
	('Nova321', 'Nova321', '2023-11-03 14:45'),
	('Eclipse654', 'Eclipse654', '2023-11-03 15:00'),
	('Voyager987', 'Voyager987', '2023-11-03 15:15');

insert into follow (follower_ID, followee_ID, datefollow) values ('Celestial123', 'Celestial123', '2023-06-28 15:39:48');
insert into follow (follower_ID, followee_ID, datefollow) values ('Horizon456', 'Horizon456', '2023-01-29 13:44:24');
insert into follow (follower_ID, followee_ID, datefollow) values ('Nebula789', 'Nebula789', '2022-10-14 01:07:02');
insert into follow (follower_ID, followee_ID, datefollow) values ('Stardust321', 'Stardust321', '2023-01-13 16:43:36');
insert into follow (follower_ID, followee_ID, datefollow) values ('Phoenix654', 'Phoenix654', '2022-11-15 08:56:25');
insert into follow (follower_ID, followee_ID, datefollow) values ('Comet987', 'Comet987', '2023-03-29 20:49:49');
insert into follow (follower_ID, followee_ID, datefollow) values ('Astral123','Astral123', '2023-09-12 22:33:33');
insert into follow (follower_ID, followee_ID, datefollow) values ('Orion456', 'Orion456', '2023-03-23 23:50:55');
insert into follow (follower_ID, followee_ID, datefollow) values ('Spectrum789', 'Spectrum789', '2023-08-15 20:09:43');
insert into follow (follower_ID, followee_ID, datefollow) values ('Galaxy321', 'Galaxy321', '2023-09-13 23:09:27');
insert into follow (follower_ID, followee_ID, datefollow) values ('Infinity654','Infinity654', '2023-09-12 22:33:33');
insert into follow (follower_ID, followee_ID, datefollow) values ('Cosmic987', 'Cosmic987', '2023-03-23 23:50:55');
insert into follow (follower_ID, followee_ID, datefollow) values ('Quasar123', 'Quasar123', '2023-08-15 20:09:43');
insert into follow (follower_ID, followee_ID, datefollow) values ('Radiant456', 'Stardust321', '2023-09-13 23:09:27');


/*
 
SELECT u.username
FROM users u
JOIN follow f ON u.userID = f.followee_id;

SELECT p.URL
FROM photos p
JOIN likes l ON p.Photo_ID = l.Photo_ID
WHERE l.userID = '4';

SELECT u.username
FROM users u
LEFT JOIN photos p ON u.userID = p.userID
WHERE p.Photo_ID IS NULL;

SELECT u.username
FROM users u
JOIN photos p ON u.userID = p.userID
JOIN likes l ON p.photo_id = l.photo_id
WHERE l.userID = u.userID;

SELECT u.username
FROM users u
LEFT JOIN photos p ON u.userID = p.userID
LEFT JOIN likes l ON p.Photo_ID = l.Photo_ID
WHERE l.Photo_ID IS NULL;

SELECT u.username
FROM users u
JOIN photos p ON u.userID = p.userID
JOIN likes l ON p.Photo_ID = l.Photo_ID;

SELECT username
FROM users
WHERE LENGTH(username) > 10;

SELECT username
FROM users
WHERE RIGHT(username, 1) = 'n';

UPDATE users
SET username = REPLACE(username, 'PetLover', 'DogHorn')
WHERE username LIKE '%PetLover%';

*/


/*
 Write a query to select the username and the number of photos
published by each user. Display the result in two columns: "Username" and
"Number of photos". Order the result by the number of photos in descending
order. */

SELECT
    username AS "Username",
    COUNT(*) AS "Number of photos"
FROM
    users join photos on users.userid = photos.userID  
GROUP BY
    username
ORDER BY
    "Number of photos" DESC;


/*
 Find the total number of likes received for each photo. Display the
photo_id and the corresponding number of likes. Order the result by the
number of likes in descending order
 */


SELECT
    photo_id, 
    COUNT(*) AS "Number of likes"
FROM
    likes 
GROUP BY
    photo_id 
ORDER BY
    "Number of likes" DESC;
   
   
/* Identify the user who has posted the earliest photo. Display their
username and the date of the earliest photo. Display the date in the format
DD/MM/YYYY

*/
   
SELECT
    username,
    photos.public_date 
    
FROM
    users join photos on users.userid = photos.userid 
where public_date = (select min(public_date) from photos );




--demonstration of indexes 
drop index if exists index1;

create index index1 on users(userID);  
/*while index is created, time of execution is reduced to 0.03ms from 0.035ms*/


EXPLAIN ANALYZE SELECT * FROM users WHERE userID = 'Stardust321';


 -- Drop the index if it exists
DROP INDEX IF EXISTS index_public_date;

-- Create the index on the publish_date column
CREATE INDEX index_public_date ON photos(public_date);

-- Use EXPLAIN ANALYZE to check the efficiency with and without the index

-- Without Index (before) 0.055
EXPLAIN ANALYZE SELECT * FROM photos ORDER BY public_date DESC;

-- With Index (after) 0.052



-- selecting usernames that are followed by a user and those where being followed by that user

select username from users 
join follow on users.userid = follow.follower_ID
where follow.followee_ID = 'Stardust321'
union 
select username from users 
join follow on users.userid = follow.followee_ID
where follow.follower_ID = 'Stardust321';

--selecting IDs from the users table that intersect with IDs from the follow table
select userID from likes
intersect
select follower_ID from follow;

