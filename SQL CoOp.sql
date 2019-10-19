CREATE TABLE [GRA] (
	ID integer IDENTITY(1,1) NOT NULL,
	TYTUL nvarchar(200) NOT NULL,
	PLATFORMA integer,
	GATUNEK integer,
	INTERNET integer,
	LAN integer,
	SPLIT integer,
	OBRAZEK nvarchar(max),
	OPIS nvarchar(max),
  CONSTRAINT [PK_GRA] PRIMARY KEY CLUSTERED
  (
  [ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)
)
GO
CREATE TABLE [PLATFORMA] (
	ID integer IDENTITY(1,1) NOT NULL,
	NAZWA NVARCHAR(20) NOT NULL,
  CONSTRAINT [PK_PLATFORMA] PRIMARY KEY CLUSTERED
  (
  [ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)
)
GO

CREATE TABLE [GATUNEK] (
	ID integer IDENTITY(1,1) NOT NULL,
	NAZWA NVARCHAR(50),
	CONSTRAINT [PK_GATUNEK] PRIMARY KEY CLUSTERED
	(
	[ID] ASC
	) WITH (IGNORE_DUP_KEY = OFF)
)
GO



ALTER TABLE [GRA] WITH CHECK ADD CONSTRAINT [GRA_fk0] FOREIGN KEY ([PLATFORMA]) REFERENCES [PLATFORMA]([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [GRA] WITH CHECK ADD CONSTRAINT [GRA_fk1] FOREIGN KEY ([GATUNEK]) REFERENCES [GATUNEK]([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [GRA] CHECK CONSTRAINT [GRA_fk0]
GO
ALTER TABLE [GRA] CHECK CONSTRAINT [GRA_fk1]
GO


insert into platforma values ('Nieistotne'),('PC'),('Xbox 360'),('Xbox One'),('PlayStation 3'), ('PlayStation 4');
insert into gatunek values ('Nieistotne'),('Akcja'),('Sportowa'),('Inne');

INSERT INTO GRA VALUES ('Borderlands',2,2,4,4,2,NULL,'Nunc lorem eros, volutpat non orci vel, pulvinar ultricies ex. Sed quis felis elit. Phasellus eros dolor, tristique vitae euismod non, lacinia non odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent iaculis, lectus in consectetur eleifend.'),
						('Borderlands',3,2,4,4,2,NULL,'Nunc lorem eros, volutpat non orci vel, pulvinar ultricies ex. Sed quis felis elit. Phasellus eros dolor, tristique vitae euismod non, lacinia non odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent iaculis, lectus in consectetur eleifend.'),
						('Borderlands',5,2,4,4,2,NULL,'Nunc lorem eros, volutpat non orci vel, pulvinar ultricies ex. Sed quis felis elit. Phasellus eros dolor, tristique vitae euismod non, lacinia non odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent iaculis, lectus in consectetur eleifend.'),
						('FIFA 15',2,3,0,0,4,NULL,'Mauris tempus metus non nulla tempus consequat. Nulla ultricies sapien in dolor iaculis, vel molestie ipsum ultricies. Duis quam dolor, convallis ac nunc sit amet, viverra lacinia magna. Nulla aliquam lectus eu lacinia imperdiet. Sed vel velit nec velit vehicula rhoncus eu a ligula. Morbi finibus mattis lectus, vitae porta dui facilisis a. Donec sed felis id augue ultricies ornare. Maecenas efficitur vitae dolor sit amet scelerisque. Maecenas suscipit ipsum in sollicitudin dictum. Suspendisse aliquet, ex ut porttitor faucibus, diam neque maximus metus, ut elementum eros quam sed justo. Suspendisse vitae sem commodo, congue sapien et, sodales odio. Fusce eu.'),
						('FIFA 15',3,3,0,0,4,NULL,'Mauris tempus metus non nulla tempus consequat. Nulla ultricies sapien in dolor iaculis, vel molestie ipsum ultricies. Duis quam dolor, convallis ac nunc sit amet, viverra lacinia magna. Nulla aliquam lectus eu lacinia imperdiet. Sed vel velit nec velit vehicula rhoncus eu a ligula. Morbi finibus mattis lectus, vitae porta dui facilisis a. Donec sed felis id augue ultricies ornare. Maecenas efficitur vitae dolor sit amet scelerisque. Maecenas suscipit ipsum in sollicitudin dictum. Suspendisse aliquet, ex ut porttitor faucibus, diam neque maximus metus, ut elementum eros quam sed justo. Suspendisse vitae sem commodo, congue sapien et, sodales odio. Fusce eu.'),
						('FIFA 15',4,3,0,0,4,NULL,'Mauris tempus metus non nulla tempus consequat. Nulla ultricies sapien in dolor iaculis, vel molestie ipsum ultricies. Duis quam dolor, convallis ac nunc sit amet, viverra lacinia magna. Nulla aliquam lectus eu lacinia imperdiet. Sed vel velit nec velit vehicula rhoncus eu a ligula. Morbi finibus mattis lectus, vitae porta dui facilisis a. Donec sed felis id augue ultricies ornare. Maecenas efficitur vitae dolor sit amet scelerisque. Maecenas suscipit ipsum in sollicitudin dictum. Suspendisse aliquet, ex ut porttitor faucibus, diam neque maximus metus, ut elementum eros quam sed justo. Suspendisse vitae sem commodo, congue sapien et, sodales odio. Fusce eu.'),
						('FIFA 15',5,3,0,0,4,NULL,'Mauris tempus metus non nulla tempus consequat. Nulla ultricies sapien in dolor iaculis, vel molestie ipsum ultricies. Duis quam dolor, convallis ac nunc sit amet, viverra lacinia magna. Nulla aliquam lectus eu lacinia imperdiet. Sed vel velit nec velit vehicula rhoncus eu a ligula. Morbi finibus mattis lectus, vitae porta dui facilisis a. Donec sed felis id augue ultricies ornare. Maecenas efficitur vitae dolor sit amet scelerisque. Maecenas suscipit ipsum in sollicitudin dictum. Suspendisse aliquet, ex ut porttitor faucibus, diam neque maximus metus, ut elementum eros quam sed justo. Suspendisse vitae sem commodo, congue sapien et, sodales odio. Fusce eu.'),
						('FIFA 15',6,3,0,0,4,NULL,'Mauris tempus metus non nulla tempus consequat. Nulla ultricies sapien in dolor iaculis, vel molestie ipsum ultricies. Duis quam dolor, convallis ac nunc sit amet, viverra lacinia magna. Nulla aliquam lectus eu lacinia imperdiet. Sed vel velit nec velit vehicula rhoncus eu a ligula. Morbi finibus mattis lectus, vitae porta dui facilisis a. Donec sed felis id augue ultricies ornare. Maecenas efficitur vitae dolor sit amet scelerisque. Maecenas suscipit ipsum in sollicitudin dictum. Suspendisse aliquet, ex ut porttitor faucibus, diam neque maximus metus, ut elementum eros quam sed justo. Suspendisse vitae sem commodo, congue sapien et, sodales odio. Fusce eu.'),
						('Portal 2',2,4,2,2,0,NULL,'Praesent a tristique nunc. Mauris rutrum sed lorem eget congue. Mauris vestibulum ac ipsum non congue. Aliquam dapibus venenatis quam, ultricies ultricies augue vestibulum tincidunt. Pellentesque ut ornare ex. Aliquam erat volutpat. Cras congue nibh id libero placerat, eu vulputate.'),
						('Portal 2',3,4,2,2,0,NULL,'Praesent a tristique nunc. Mauris rutrum sed lorem eget congue. Mauris vestibulum ac ipsum non congue. Aliquam dapibus venenatis quam, ultricies ultricies augue vestibulum tincidunt. Pellentesque ut ornare ex. Aliquam erat volutpat. Cras congue nibh id libero placerat, eu vulputate.'),
						('Portal 2',5,4,2,2,0,NULL,'Praesent a tristique nunc. Mauris rutrum sed lorem eget congue. Mauris vestibulum ac ipsum non congue. Aliquam dapibus venenatis quam, ultricies ultricies augue vestibulum tincidunt. Pellentesque ut ornare ex. Aliquam erat volutpat. Cras congue nibh id libero placerat, eu vulputate.'),
						('League of Legends',2,2,10,0,0,NULL,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla ut scelerisque velit. Mauris posuere feugiat auctor. In nisl velit, rhoncus nec sagittis sed, ultricies nec tellus. Mauris facilisis pharetra gravida. Donec ut iaculis lorem. Duis lectus lorem, vulputate a metus mattis, molestie tempus nunc. Aliquam erat volutpat. Ut sodales, lacus malesuada placerat commodo, risus arcu auctor mauris, sed tincidunt ex justo sed libero. Nunc efficitur volutpat felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec faucibus, leo eget condimentum rutrum, sem urna rhoncus massa, eu pellentesque augue massa et.'),
						('Overwatch',2,2,12,0,0,NULL,'Curabitur ut vulputate elit. Pellentesque in turpis dolor. Donec mollis odio sit amet libero mollis, ac tincidunt turpis auctor. Nullam efficitur hendrerit ante, id porttitor arcu malesuada quis. Proin placerat semper justo eu imperdiet. Proin at odio.'),
						('Overwatch',4,2,12,0,0,NULL,'Curabitur ut vulputate elit. Pellentesque in turpis dolor. Donec mollis odio sit amet libero mollis, ac tincidunt turpis auctor. Nullam efficitur hendrerit ante, id porttitor arcu malesuada quis. Proin placerat semper justo eu imperdiet. Proin at odio.'),
						('Overwatch',6,2,12,0,0,NULL,'Curabitur ut vulputate elit. Pellentesque in turpis dolor. Donec mollis odio sit amet libero mollis, ac tincidunt turpis auctor. Nullam efficitur hendrerit ante, id porttitor arcu malesuada quis. Proin placerat semper justo eu imperdiet. Proin at odio.');
						
						--NAZWA PLATFORMA GATUNEK INTERNET LAN SPLIT 


DROP TABLE IF EXISTS [GRA]
GO
DROP TABLE IF EXISTS [GATUNEK]
GO
DROP TABLE IF EXISTS [PLATFORMA]
GO
DROP TABLE IF EXISTS [OBRAZKI]
GO

Create Procedure showGames
As
Begin
    Select DISTINCT a.Nazwa, b.Nazwa from GRA a
    INNER JOIN PLATFORMA b on a.PLATFORMA = b.ID
End

CREATE PROCEDURE filterInternetGames @Platforma int, @Ilu int
AS
	SELECT a.ID, a.Tytul, b.nazwa
	FROM Gra a INNER JOIN Gatunek b on b.ID = a.Gatunek
	WHERE INTERNET >= @Ilu and PLATFORMA = @Platforma
GO

CREATE PROCEDURE filterLANGames @Platforma int, @Ilu int
AS
	SELECT a.ID, a.Tytul, b.nazwa
	FROM Gra a INNER JOIN Gatunek b on b.ID = a.Gatunek
	WHERE LAN >= @Ilu and PLATFORMA = @Platforma
GO

CREATE PROCEDURE filterSPLITGames @Platforma int, @Ilu int
AS
	SELECT a.ID, a.Tytul, b.nazwa
	FROM Gra a INNER JOIN Gatunek b on b.ID = a.Gatunek
	WHERE SPLIT >= @Ilu and PLATFORMA = @Platforma
GO

CREATE PROCEDURE getPCGames 
AS 
SELECT a.ID, a.Tytul, b.Nazwa 
FROM GRA a INNER JOIN Gatunek b on b.ID = a.Gatunek
WHERE PLATFORMA = 2
GO

CREATE PROCEDURE getPSGames 
AS 
SELECT a.ID, a.Tytul, b.Nazwa 
FROM GRA a INNER JOIN Gatunek b on b.ID = a.Gatunek
WHERE PLATFORMA = 5 or PLATFORMA = 6
GO

CREATE PROCEDURE getXboxGames 
AS 
SELECT a.ID, a.Tytul, b.Nazwa 
FROM GRA a INNER JOIN Gatunek b on b.ID = a.Gatunek
WHERE PLATFORMA = 3 or PLATFORMA = 4
GO



('','','','','','','','','',NULL);
