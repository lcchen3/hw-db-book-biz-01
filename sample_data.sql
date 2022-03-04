USE `bookbiz`;

-- generate sample data strings in Python
-- books
INSERT INTO `Books` VALUES("978-1-77550-643-0","Leave force ahead","Mystery","williamscarol@example.net","nwhite@example.com",NULL,"vsmith@example.net",NULL,NULL,"dawnhunt5@example.com"),
	("978-1-04-585558-9","Great American record","Non-fiction","amber263@example.org",NULL,NULL,"brownkevin6@example.org",NULL,NULL,"luis31@example.net" ),
	("978-0-569-27012-0","Great hair, individual experience","Romance","nwhite@example.com",NULL,NULL,"edwardgray7@example.net","vsmith@example.net",NULL,"xgiles@example.net");

-- authors
INSERT INTO `Authors` VALUES("vsmith@example.net","Sue Williams"),
	("brownkevin6@example.org","James Mendoza"),
	("edwardgray7@example.net","Sheryl Dominguez");

-- editors
INSERT INTO `Editors` VALUES("williamscarol@example.net","Carol Williams","dawnhunt5@example.com",NULL),
("amber263@example.org","Amber Chen","luis31@example.net","dawnhunt5@example.com"),
("nwhite@example.com","Naiyah White","xgiles@example.net","dawnhunt5@example.com");

-- publishers
INSERT INTO `Publishers` VALUES("dawnhunt5@example.com","Dawn Hunt"),
("luis31@example.net","Luis Miguel"),
("xgiles@example.net","Xavier Giles");

-- orders
INSERT INTO `Orders` VALUES(1,"1993-11-14","978-1-77550-643-0","jennifer54example.com"),
(2,"2018-07-05","978-1-04-585558-9","samanthaleeexample.com"),
(3,"1991-10-24","978-0-569-27012-0","teresa505example.org");

-- customers
INSERT INTO `Customers` VALUES("jennifer54example.com","Jennifer Giacomo"),
("samanthaleeexample.com","Samantha Lee"),
("teresa505example.org","Mother Teresa");

-- bookroyalties 
INSERT INTO `BookRoyalties` VALUES(1,11437240,"978-1-77550-643-0","vsmith@example.net"),
(2, 21490,"978-0-569-27012-0","edwardgray7@example.net"),
(3, 21490,"978-0-569-27012-0","vsmith@example.net"),
(4, 83791,"978-1-04-585558-9","brownkevin6@example.org");