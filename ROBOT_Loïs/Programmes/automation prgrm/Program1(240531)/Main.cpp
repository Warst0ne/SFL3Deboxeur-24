
#include <bur/plctypes.h>
#include <iostream>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

// amount of memory to be allocated for heap storage must be specified for every ANSI C++ program with the bur_heap_size variable
unsigned long bur_heap_size = 0xFFFF; 


//fonction arondissant un nombre en entier
int arrondirEnEntier(double nombre) {
	// Ajouter 0.5 si positif, soustraire 0.5 si n�gatif, puis convertir en entier
	if (nombre > 0) {
		return static_cast<int>(nombre + 0.5);
	} else {
		return static_cast<int>(nombre - 0.5);
	}
}


//fonction transformant un nombre décimal en binaire afin de l'envoyer au robot
void decToBinary(int x, int y)
{
	int X = x;
	int Y = y;
	// remise a 0 des varibales stockant les valeurs en binaire
	//**note** 8 variables pour 8 bits de 1 a 128
	BinCo_x[7] = false; 
	BinCo_x[6] = false;
	BinCo_x[5] = false; 
	BinCo_x[4] = false;
	BinCo_x[3] = false; 
	BinCo_x[2] = false;
	BinCo_x[1] = false; 
	BinCo_x[0] = false;
	
	BinCo_y[7] = false; 
	BinCo_y[6] = false;
	BinCo_y[5] = false; 
	BinCo_y[4] = false;
	BinCo_y[3] = false; 
	BinCo_y[2] = false;
	BinCo_y[1] = false; 
	BinCo_y[0] = false;
 
	// conteur pour la table x
	i = 0;
	while (X > 0) {
		BinCo_x[i] = X % 2;
		X = X / 2;
		i++;
	}
	// conteur pour la table y
	t = 0;
	while (Y > 0) {
		BinCo_y[t] = Y % 2;
		Y = Y / 2;
		t++;
	}
	//assignation des variables converties (x1 est le bit de poid fort)
	x8 = BinCo_x[7];
	x7 = BinCo_x[6];
	x6 = BinCo_x[5];
	x5 = BinCo_x[4];
	
	x4 = BinCo_x[3];
	x3 = BinCo_x[2];
	x2 = BinCo_x[1];
	x1 = BinCo_x[0];
	
	//assignation des variables converties (y1 est le bit de poid fort)
	y8 = BinCo_y[7];
	y7 = BinCo_y[6];
	y6 = BinCo_y[5];
	y5 = BinCo_y[4];
	
	y4 = BinCo_y[3];
	y3 = BinCo_y[2];
	y2 = BinCo_y[1];
	y1 = BinCo_y[0];
}

void _INIT ProgramInit(void)
{}

//main
void _CYCLIC ProgramCyclic(void)
{
	new_cam = Input_cam; //variable permettant de lancer la récupèration des coordonnées envoyées par la caméra
	end_cam = Input_end; //variable lancant le cycle de déboxage
	robot_ready = Input_robot; // Variable vérifiant si le robot est pret a effectuer un movement


	//reset les boutons
	if(reset == true){
		Input_cam = false;
		Input_end = false;
	}
	
	//reset toutes les variables et les tableaux pour permettre de lancer un autre deboxage
	//**note** possibilité de merger ce code avec l'autre variable de reset pour simplifier l'IHM et le code
	if(reset_tab == true){
		for(int k=0;k<=6;k++){
			tabCO_x[k]=999;
			tabCO_y[k]=999;
			temp_array = 0;
			temp = 0;
			r = 0;
			nbArticles=0;
			ConnexionBDD=0;
		}
	}

	if (new_cam == true && end_cam != true ){ // si des valeurs sont recues	
		ConnexionBDD = true;
		while(InputCO_x[r] != 0){

			//NE PAS TOUCHER 
			//LE CODE CI DESSOUS PERMET DE CORRIGER LA MARGE D'ERREUR DE LA CAMERA
			//VALEURS TROUVEES GRACE A LA METHODE EMPYRIQUE
			if(InputCO_x[r] > 190){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.94); 
			}
			else if(InputCO_x[r] > 150){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.94); 
			}
			else if(InputCO_x[r] > 125){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.939); 
			}
			else if(InputCO_x[r] > 100){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.943); 
			}
			else if(InputCO_x[r] > 75){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.94); 
			}
			else if(InputCO_x[r] > 50){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.965); 
			}
			else if(InputCO_x[r] > 25){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.975); 
			}
			else{
				CO_x = InputCO_x[r]; 
			}


			if(InputCO_y[r] > 190){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.94); 
			}
			else if(InputCO_y[r] > 170){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.94);
			}
			else if(InputCO_y[r] > 150){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.944); 
			}
			else if(InputCO_y[r] > 125){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.95); 
			}
			else if(InputCO_y[r] > 100){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.955); 
			}
			else if(InputCO_y[r] > 75){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.955);
			}
			else if(InputCO_y[r] > 50){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.96); 
			}
			else if(InputCO_y[r] > 25){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.975); 
			else{
				CO_y = InputCO_y[r]*1.1; 
			}
			
			//met les valuers arrondies dans un tableau
			tabCO_x[temp_array] = CO_x; 	
			tabCO_y[temp_array] = CO_y; 
			temp_array = temp_array + 1; 
			r++;
		}
	}	
	
	
	//se lance quand le cycle de déboxage est lancé et que des valeurs ont été récupérées
	if (end_cam == true){ 
		if(temp < temp_array && robot_ready == true){
			ExecQuery = true;
			Boucle = false;
			decToBinary(tabCO_x[temp],tabCO_y[temp]);
			finEnvoi = true;
			temp ++;
		}
		else{
			finEnvoi=false;
			ExecQuery = false;
			if(Boucle == false){// permet de stopper l'incrémentation automatique de la variable en mde cyclic
				nbArticles++;
				Boucle = true;
			}
		}
	}

}



void _EXIT ProgramExit(void)
{}
