-- USER table
CREATE TABLE USER (
    User_ID INT PRIMARY KEY,
    User_Name VARCHAR,
    Password VARCHAR,
    Email_Address VARCHAR,
    Date_of_Birth DATE,
    Gender VARCHAR,
    Residence VARCHAR,
    Occupation VARCHAR,
    Education VARCHAR,
    Height INT,
    Weight INT,
    Profile_Image BLOB
);

-- LIKE table
CREATE TABLE LIKE (
    User_ID INT,
    Liked_User_ID INT,
    Liked_Date DATE,
    PRIMARY KEY (User_ID, Liked_User_ID),
    FOREIGN KEY (User_ID) REFERENCES USER(User_ID),
    FOREIGN KEY (Liked_User_ID) REFERENCES USER(User_ID)
);

-- MATCH table
CREATE TABLE MATCH (
    User_ID INT,
    Matched_User_ID INT,
    Matched_Date DATE,
    PRIMARY KEY (User_ID, Matched_User_ID),
    FOREIGN KEY (User_ID) REFERENCES USER(User_ID),
    FOREIGN KEY (Matched_User_ID) REFERENCES USER(User_ID)
);

-- MESSAGE table
CREATE TABLE MESSAGE (
    Message_ID INT PRIMARY KEY,
    Sender_User_ID INT,
    Receiver_User_ID INT,
    Message_Body VARCHAR,
    Sent_Date DATE,
    FOREIGN KEY (Sender_User_ID) REFERENCES USER(User_ID),
    FOREIGN KEY (Receiver_User_ID) REFERENCES USER(User_ID)
);

