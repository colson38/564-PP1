drop table if exists Items;
drop table if exists Users;
drop table if exists Bids;
drop table if exists Category;

CREATE TABLE Items
(
    ItemID INT NOT NULL,
    Name VARCHAR NOT NULL,
    Currently VARCHAR NOT NULL,
    Buy_Price VARCHAR,
    First_Bid VARCHAR NOT NULL,
    Number_of_Bids VARCHAR NOT NULL,
    Started VARCHAR NOT NULL,
    Ends VARCHAR NOT NULL,
    Description VARCHAR NOT NULL,
    PRIMARY KEY(ItemID)
);

CREATE TABLE Users
(
    UserID VARCHAR NOT NULL,
    ItemID INT NOT NULL,
    Rating INT NOT NULL,
    Location VARCHAR,
    Country VARCHAR,
    PRIMARY KEY (UserID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

CREATE TABLE Bids
(
    UserID VARCHAR NOT NULL,
    ItemID INT NOT NULL,
    Amount INT NOT NULL,
    Time VARCHAR NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

CREATE TABLE Category
(
    ItemID INT NOT NULL,
    Category VARCHAR,
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);
