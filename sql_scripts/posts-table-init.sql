CREATE TABLE POSTS(
    id INT NOT NULL IDENTITY(1, 1),
    title VARCHAR(150) NOT NULL,
    author VARCHAR(75) NOT NULL,
	body VARCHAR(800) NOT NULL,
	image_path VARCHAR(100) NULL,
	timestamp DATETIME NOT NULL DEFAULT(GETDATE()),
	user_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO dbo.posts (title, author, body, user_id)
VALUES (
    'Lorem ipsum dolor sit amet',
    'Rama madugula',
    'This article is related to the udacity training in Azure database creation and develop CMS project. This table stores the articles information.',
    1
);

INSERT INTO dbo.posts (title, author, body, user_id)
VALUES (
    'Azure Article-2',
    'Rama madugula',
    'This is article 2 to practice db object creation',
    1
);