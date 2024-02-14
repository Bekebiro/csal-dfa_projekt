DROP TABLE IF EXISTS Személy;

CREATE TABLE Személy (
    SzemelyId INTEGER PRIMARY KEY AUTOINCREMENT,
    SzulHely TEXT,
    KeresztNev TEXT,
    VezetekNev TEXT,
    ElhunytHely TEXT,
    ElhunytIdo DATE,
    SzulIdo DATE,
    Nem CHAR,
    ApaId INTEGER,
    AnyaId INTEGER,
    HazasId INTEGER,
    FOREIGN KEY (ApaId) REFERENCES Szemely(SzemelyId),
    FOREIGN KEY (AnyaId) REFERENCES Szemely(SzemelyId),
    FOREIGN KEY (HazasId) REFERENCES Szemely(SzemelyId)
);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(1, 'Budapest', 'József', 'Kovács', NULL, NULL, '2005-05-14', 'F', 2, 3, NULL);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(2, 'Budapest', 'Barnabás', 'Kovács', NULL, NULL, '1977-08-12', 'F',4 ,5, 3);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(3, 'Budapest', 'Erika', 'Mészáros', NULL, NULL, '1977-08-12', 'N',6 ,7, 2);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(4, 'Budapest', 'Ferenc', 'Kovács', NULL, NULL, '1954-02-21', 'F',8 ,9, 5);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(5, 'Budapest', 'Viktória', 'Bányai', NULL, NULL, '1955-01-04', 'N',10 ,11, 4);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(6, 'Békéscsaba', 'Csaba', 'Mészáros', NULL, NULL, '1958-08-12', 'F',12 ,13, 7);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(7, 'Békés', 'Erika', 'Kapus', NULL, NULL, '1957-02-21', 'N', 14 ,15, 6);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(8, 'Budapest', 'János', 'Kovács', 'Budapest', '2000-10-13', '1930-05-25', 'F',16 ,17, 9);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(9, 'Budapest', 'Mária', 'Szabó', NULL, NULL, '1928-06-14', 'N',18 ,19, 8);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(10, 'Budapest', 'Viktor', 'Bányai', NULL, NULL, '1922-08-01', 'F',20 ,21, 11);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(11, 'Budapest', 'Erzsébet', 'Nagy', 'Budapest', '2003-01-30', '1928-09-16', 'N', 22 ,23, 10);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(12, 'Békéscsaba', 'István', 'Mészáros', NULL, NULL, '1924-01-21', 'F',24 ,25, 13);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(13, 'Nyíregyháza', 'Magdolna', 'Vadkerty', NULL, NULL, '1933-02-21', 'N', 26 ,27, 12);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(14, 'Debrecen', 'Péter', 'Kapus', NULL, NULL, '1929-05-11', 'F', 28 ,29, 15);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(15, 'Debrecen', 'Sára', 'Papp', 'Debrecen', '2023-08-27', '1930-02-08', 'N', 30 , 31, 14);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(16, 'Kazincbarcika', 'Dénes', 'Kovács', 'Budapest', '1982-03-04', '1908-11-18', 'F', NULL , NULL, 17);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(17, 'Monor', 'Liza', 'Turi', 'Budapest', '2010-02-14', '1909-12-12', 'N', NULL , NULL, 16);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(18, 'Kiskunfélegyháza', 'József', 'Szabó', "Budapest", '1944-12-03', '1905-03-15', 'F', NULL , NULL, 19);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(19, 'Kiskunfélegyháza', 'Sára', 'Varga', 'Kiskunfélegyháza', '2002-12-03', '1907-10-10', 'N', NULL , NULL, 18);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(20, 'Kiskunfélegyháza', 'Nándor', 'Bányai', 'Kiskunfélegyháza', '1956-10-23', '1899-12-31', 'F', NULL , NULL, 21);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(21, 'Kecskemét', 'Anna', 'Hermann', 'Nagykőrös', '1982-05-22', '1902-08-30', 'N', NULL , NULL, 20);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(22, 'Nagykőrös', 'Attila', 'Nagy', 'Debrecen', '1979-09-13', '1905-02-27', 'F', NULL , NULL, 23);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(23, 'Tiszaug', 'Ágnes', 'Nagy', 'Kecskemét', '1995-07-23', '1905-02-11', 'N', NULL , NULL, 22);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(24, 'Szeged', 'István', 'Mészáros', 'Kecskemét', '1994-05-21', '1900-11-11', 'F', NULL , NULL, 25);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(25, 'Öttömös', 'Erzsébet', 'Keserű', NULL, NULL, '1907-05-06', 'N', NULL , NULL, 24);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(26, 'Tatabánya', 'László', 'Vadkerty', 'Tatabánya', '1995-01-29', '1910-04-01', 'F', NULL , NULL, 27);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(27, 'Salgótarján', 'Mária', 'Komáromy', 'Tatabánya', '1999-12-04', '1911-06-13', 'N', NULL , NULL, 26);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(28, 'Sopron', 'Péter', 'Kapus', 'Sopron', '1984-04-11', '1908-01-02', 'F', NULL , NULL, 29);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(29, 'Győr', 'Magdolna', 'Szentpáli', 'Győr', '1966-08-17', '1913-10-25', 'N', NULL , NULL, 28);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(30, 'Szombathely', 'Imre', 'Papp', 'Sopron', '1961-02-11', '1903-02-02', 'F', NULL , NULL, 31);

INSERT INTO Személy(SzemelyId, SzulHely, KeresztNev, VezetekNev, ELhunytHely, ElhunytIdo, SzulIdo, Nem, ApaId, AnyaId, HazasId)
VALUES(31, 'Körmend', 'Etelka', 'Kovács', 'Körmend', '1944-02-05', '1906-04-24', 'N', NULL , NULL, 30);