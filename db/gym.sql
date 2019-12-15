DROP TABLE bookings;
DROP TABLE members;
DROP TABLE sessions;


CREATE TABLE members(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  gender VARCHAR(255),
  dob VARCHAR(255) NOT NULL,
  address VARCHAR(255),
  post_code VARCHAR(255),
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL
);

CREATE TABLE sessions(
  id SERIAL PRIMARY KEY,
  session_name VARCHAR(255),
  session_type VARCHAR(255),
  session_time VARCHAR(255),
  session_date VARCHAR(255)
);


CREATE TABLE bookings(
  id SERIAL PRIMARY KEY,
  member_id INT REFERENCES members(id) ON DELETE CASCADE,
  session_id INT REFERENCES sessions(id) ON DELETE CASCADE
);
