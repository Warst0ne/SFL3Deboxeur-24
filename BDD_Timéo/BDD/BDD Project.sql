#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Operateur
#------------------------------------------------------------

CREATE TABLE Operateur(
        ID       Int  Auto_increment  NOT NULL ,
        NOM      Varchar (5) NOT NULL ,
        Prenom   Varchar (50) NOT NULL ,
        Password Varchar (50) NOT NULL
	,CONSTRAINT Operateur_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ROBOT
#------------------------------------------------------------

CREATE TABLE ROBOT(
        id         Int  Auto_increment  NOT NULL ,
        coord_X    Bool NOT NULL ,
        coord_y    Bool NOT NULL ,
        nb_gabarit Int NOT NULL
	,CONSTRAINT ROBOT_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Cognex
#------------------------------------------------------------

CREATE TABLE Cognex(
        id      Int  Auto_increment  NOT NULL ,
        coord_X Bool NOT NULL ,
        coord_y Bool NOT NULL
	,CONSTRAINT Cognex_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Responsable 
#------------------------------------------------------------

CREATE TABLE Responsable(
        ID       Int  Auto_increment  NOT NULL ,
        NOM      Varchar (5) NOT NULL ,
        Prenom   Varchar (50) NOT NULL ,
        Password Varchar (50) NOT NULL
	,CONSTRAINT Responsable_PK PRIMARY KEY (ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Interface Web
#------------------------------------------------------------

CREATE TABLE Interface_Web(
        id         Int  Auto_increment  NOT NULL ,
        nb_alarme  Varchar (50) NOT NULL ,
        nb_gabarit Int NOT NULL
	,CONSTRAINT Interface_Web_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: BDD
#------------------------------------------------------------

CREATE TABLE BDD(
        id               Int  Auto_increment  NOT NULL ,
        coord_cognex     Bool NOT NULL ,
        coord_robot      Bool NOT NULL ,
        nb_alarme        Int NOT NULL ,
        id_Interface_Web Int NOT NULL
	,CONSTRAINT BDD_PK PRIMARY KEY (id)

	,CONSTRAINT BDD_Interface_Web_FK FOREIGN KEY (id_Interface_Web) REFERENCES Interface_Web(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: IHM
#------------------------------------------------------------

CREATE TABLE IHM(
        id         Int  Auto_increment  NOT NULL ,
        nb_recette Int NOT NULL
	,CONSTRAINT IHM_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: envoyer
#------------------------------------------------------------

CREATE TABLE envoyer(
        id        Int NOT NULL ,
        id_Cognex Int NOT NULL
	,CONSTRAINT envoyer_PK PRIMARY KEY (id,id_Cognex)

	,CONSTRAINT envoyer_BDD_FK FOREIGN KEY (id) REFERENCES BDD(id)
	,CONSTRAINT envoyer_Cognex0_FK FOREIGN KEY (id_Cognex) REFERENCES Cognex(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: recuperer
#------------------------------------------------------------

CREATE TABLE recuperer(
        id     Int NOT NULL ,
        id_BDD Int NOT NULL
	,CONSTRAINT recuperer_PK PRIMARY KEY (id,id_BDD)

	,CONSTRAINT recuperer_ROBOT_FK FOREIGN KEY (id) REFERENCES ROBOT(id)
	,CONSTRAINT recuperer_BDD0_FK FOREIGN KEY (id_BDD) REFERENCES BDD(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: inspecter
#------------------------------------------------------------

CREATE TABLE inspecter(
        id        Int NOT NULL ,
        id_ROBOT  Int NOT NULL ,
        id_Cognex Int NOT NULL
	,CONSTRAINT inspecter_PK PRIMARY KEY (id,id_ROBOT,id_Cognex)

	,CONSTRAINT inspecter_IHM_FK FOREIGN KEY (id) REFERENCES IHM(id)
	,CONSTRAINT inspecter_ROBOT0_FK FOREIGN KEY (id_ROBOT) REFERENCES ROBOT(id)
	,CONSTRAINT inspecter_Cognex1_FK FOREIGN KEY (id_Cognex) REFERENCES Cognex(id)
)ENGINE=InnoDB;

