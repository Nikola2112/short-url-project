CREATE TABLE "user"
(
    id         INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200),
    last_name  VARCHAR(200),
    email      VARCHAR(1000),
    login      VARCHAR(1000),
    password   VARCHAR(100) CHECK (LENGTH(password) >= 8 AND LENGTH(password) <= 100)
);

CREATE TABLE url
(
    id              INTEGER PRIMARY KEY AUTO_INCREMENT,
    long_URL        VARCHAR(100000),
    short_URL       VARCHAR(50),
    created_at      DATE,
    click_times     INTEGER,
    expiration_date DATE,
    user_id         INTEGER,
    FOREIGN KEY (user_id) REFERENCES "user" (id)
);