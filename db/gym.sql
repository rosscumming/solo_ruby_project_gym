DROP TABLE bookings;
DROP TABLE members;
DROP TABLE sessions;


CREATE TABLE sessions(
  id SERIAL PRIMARY KEY,
  session_name VARCHAR(255),
  session_type VARCHAR(255)
);

CREATE TABLE members(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  gender VARCHAR(255),
  dob VARCHAR(255) NOT NULL,
  address VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(255)
);

CREATE TABLE bookings(
  id SERIAL PRIMARY KEY,
  member_id INT REFERENCES members(id),
  session_id INT REFERENCES sessions(id)
);
