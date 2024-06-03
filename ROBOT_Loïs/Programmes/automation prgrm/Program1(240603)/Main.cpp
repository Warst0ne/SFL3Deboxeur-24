
#include <bur/plctypes.h>
#include <iostream>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

// amount of memory to be allocated for heap storage must be specified for every ANSI C++ program with the bur_heap_size variable
unsigned long bur_heap_size = 0xFFFF; 

int arrondirEnEntier(double nombre) {
	// Ajouter 0.5 si positif, soustraire 0.5 si négatif, puis convertir en entier
	if (nombre > 0) {
		return static_cast<int>(nombre + 0.5);
	} else {
		return static_cast<int>(nombre - 0.5);
	}
}

void decToBinary(int x, int y)
{
	int X = x;
	int Y = y;
	// remise a 0 des varibales
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
	//assignation des variables de x en binaire
	x8 = BinCo_x[7];
	x7 = BinCo_x[6];
	x6 = BinCo_x[5];
	x5 = BinCo_x[4];
	
	x4 = BinCo_x[3];
	x3 = BinCo_x[2];
	x2 = BinCo_x[1];
	x1 = BinCo_x[0];
	
	//assignation des variables de y en binaire
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
{
	// Insert code here 

}

void _CYCLIC ProgramCyclic(void)
{
	new_cam = Input_cam; //correspond au bonton pour prendre les coordonnées
	end_cam = Input_end; //correspond au bonton pour lancer le deboxage
	
	if (new_cam == true && end_cam != true ){ 
		ConnexionBDD = true;
		while(InputCO_x[r] != 0){
			
			
			//NE SURTOUT PAS TOUCHER
			//METHODE EMPYRIQUE POUR AJOUSTER L'ERREUR DE LA CAMERA
			if(InputCO_x[r] > 190){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.94); //variable stockant la valeur de y recue
			}
			else if(InputCO_x[r] > 150){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.94); //variable stockant la valeur de y recue
			}
			else if(InputCO_x[r] > 125){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.939); //variable stockant la valeur de y recue
			}
			else if(InputCO_x[r] > 100){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.943); //variable stockant la valeur de y recue
			}
			else if(InputCO_x[r] > 75){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.94); //variable stockant la valeur de y recue
			}
			else if(InputCO_x[r] > 50){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.965); //variable stockant la valeur de y recue
			}
			else if(InputCO_x[r] > 25){
				CO_x = arrondirEnEntier(InputCO_x[r]*0.975); //variable stockant la valeur de y recue
			}
			else{
				CO_x = InputCO_x[r]; //variable stockant la valeur de y recue
			}
			if(InputCO_y[r] > 190){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.94); //variable stockant la valeur de y recue
			}
			else if(InputCO_y[r] > 170){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.94); //variable stockant la valeur de y recue
			}
			else if(InputCO_y[r] > 150){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.944); //variable stockant la valeur de y recue
			}
			else if(InputCO_y[r] > 125){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.95); //variable stockant la valeur de y recue
			}
			else if(InputCO_y[r] > 100){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.955); //variable stockant la valeur de y recue
			}
			else if(InputCO_y[r] > 75){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.955); //variable stockant la valeur de y recue
			}
			else if(InputCO_y[r] > 50){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.96); //variable stockant la valeur de y recue
			}
			else if(InputCO_y[r] > 25){
				CO_y = arrondirEnEntier(InputCO_y[r]*0.975); //variable stockant la valeur de y recue
			}
			else{
				CO_y = InputCO_y[r]*1.1; //variable stockant la valeur de y recue
			}
			
			
			
			tabCO_x[temp_array] = CO_x; //mettre la valeur x a l'emplacement donné du tableau	
			tabCO_y[temp_array] = CO_y; //mettre la valeur y a l'emplacement donné du tableau
			temp_array = temp_array + 1; //ajouter 1 a temp_array
			r++;
		}
	}
	robot_ready = Input_robot;
	
	
	if(reset == true){
		Input_cam = false;
		Input_end = false;
	}
	
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
	
	if (end_cam == true){ //si la caméra à finie d'envoyer ses valeurs
		if(temp < temp_array && robot_ready == true){
			ExecQuery = true;
			Boucle = false;
			decToBinary(tabCO_x[temp],tabCO_y[temp]);
			finEnvoi = true;
			temp ++;
			//sleep(1);
		}
		else{
			finEnvoi=false;
			ExecQuery = false;
			if(Boucle == false){
				nbArticles++;
				Boucle = true;
			}
		}
	}

}



void _EXIT ProgramExit(void)
{
	// Insert code here 

}
