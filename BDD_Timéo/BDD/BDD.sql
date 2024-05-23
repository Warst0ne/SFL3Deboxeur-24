#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Alarme
#------------------------------------------------------------

CREATE TABLE Alarme(
        ID          Int  Auto_increment  NOT NULL ,
        date_alarme Date NOT NULL ,
        nb_erreur   Int NOT NULL ,
        user_id1    Int NOT NULL
	,CONSTRAINT Alarme_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: USER
#------------------------------------------------------------

CREATE TABLE USER(
        id        Int  Auto_increment  NOT NULL ,
        username  Varchar (50) NOT NULL ,
        password  Varchar (50) NOT NULL ,
        nom       Varchar (50) NOT NULL ,
        prenom    Varchar (50) NOT NULL ,
        Role      Varchar (50) NOT NULL ,
        ID_Alarme Int NOT NULL
	,CONSTRAINT USER_PK PRIMARY KEY (id)

	,CONSTRAINT USER_Alarme_FK FOREIGN KEY (ID_Alarme) REFERENCES Alarme(ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Article
#------------------------------------------------------------

CREATE TABLE Article(
        ID          Int  Auto_increment  NOT NULL ,
        ref_article Int NOT NULL ,
        nb_article  Int NOT NULL
	,CONSTRAINT Article_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Gabarit
#------------------------------------------------------------

CREATE TABLE Gabarit(
        ID          Int  Auto_increment  NOT NULL ,
        ref_gabarit Int NOT NULL ,
        Hauteur     Double NOT NULL ,
        Largeur     Double NOT NULL ,
        point_prise Varchar (50) NOT NULL ,
        ID_Article  Int NOT NULL
	,CONSTRAINT Gabarit_PK PRIMARY KEY (ID)

	,CONSTRAINT Gabarit_Article_FK FOREIGN KEY (ID_Article) REFERENCES Article(ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Recette
#------------------------------------------------------------

CREATE TABLE Recette(
        ID           Int  Auto_increment  NOT NULL ,
        ref_recette  Varchar (50) NOT NULL ,
        nb_gabarit   Int NOT NULL ,
        date_recette Date NOT NULL ,
        user_id      Int NOT NULL ,
        gabarit_id   Int NOT NULL ,
        user_id1     Int NOT NULL ,
        gabarit_id1  Int NOT NULL ,
        ID_Gabarit   Int NOT NULL
	,CONSTRAINT Recette_PK PRIMARY KEY (ID)

	,CONSTRAINT Recette_Gabarit_FK FOREIGN KEY (ID_Gabarit) REFERENCES Gabarit(ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Utiliser
#------------------------------------------------------------

CREATE TABLE Utiliser(
        ID      Int NOT NULL ,
        id_USER Int NOT NULL
	,CONSTRAINT Utiliser_PK PRIMARY KEY (ID,id_USER)

	,CONSTRAINT Utiliser_Recette_FK FOREIGN KEY (ID) REFERENCES Recette(ID)
	,CONSTRAINT Utiliser_USER0_FK FOREIGN KEY (id_USER) REFERENCES USER(id)
)ENGINE=InnoDB;

