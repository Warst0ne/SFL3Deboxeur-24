
#include <bur/plctypes.h>
#include <iostream>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

// amount of memory to be allocated for heap storage must be specified for every ANSI C++ program with the bur_heap_size variable
unsigned long bur_heap_size = 0xFFFF; 

void decToBinary(int x, int y)
{
	// remise a 0 des varibales
	x1 = 0, y1 = 0;
	x2 = 0, y2 = 0;
	x3 = 0, y3 = 0;
	x4 = 0, y4 = 0;
	
	x5 = 0, y5 = 0;
	x6 = 0, y6 = 0;
	x7 = 0, y7 = 0;
	x8 = 0, y8 = 0;
 
	// conteur pour la table x
	int i = 0;
	while (x > 0) {
		BinCo_x[i] = x % 2;
		x = x / 2;
		i++;
	}
	// conteur pour la table y
	int t = 0;
	while (y > 0) {
		BinCo_y[t] = y % 2;
		y = y / 2;
		t++;
	}
	//assignation des variables de x en binaire
	x1 = BinCo_x[7];
	x2 = BinCo_x[6];
	x3 = BinCo_x[5];
	x4 = BinCo_x[4];
	
	x5 = BinCo_x[3];
	x6 = BinCo_x[2];
	x7 = BinCo_x[1];
	x8 = BinCo_x[0];
	
	//assignation des variables de y en binaire
	y1 = BinCo_y[7];
	y2 = BinCo_y[6];
	y3 = BinCo_y[5];
	y4 = BinCo_y[4];
	
	y5 = BinCo_y[3];
	y6 = BinCo_y[2];
	y7 = BinCo_y[1];
	y8 = BinCo_y[0];
}

void _INIT ProgramInit(void)
{
	// Insert code here 

}

void _CYCLIC ProgramCyclic(void)
{
	new_cam = Input_cam; //variable en booléen qui est true quand la cam a envoyée ses deux donnés
	end_cam = Input_end; //variable en booléen qui est true quand la cam a envoyée toutes les coordonnées
	
	CO_x = InputCO_x; //variable stockant la valeur de x recue
	CO_y = InputCO_y; //variable stockant la valeur de y recue
	
	robot_ready = Input_robot;
	
	
	if(reset == true){
		Input_cam = false;
		Input_end = false;
	}
	
	if(reset_tab == true){
		for(int k=0;k<=6;k++){
			tabCO_x[k]=0;
			tabCO_y[k]=0;
			temp_array = 0;
			temp = 0;
		}
	}
	
	if (new_cam == true && end_cam != true ){ // si des valeurs sont recues	
		if(CO_x != tabCO_x[temp_array - 1] || CO_y != tabCO_y[temp_array - 1]){
			tabCO_x[temp_array] = CO_x; //mettre la valeur y a l'emplacement donné du tableau	
			tabCO_y[temp_array] = CO_y; //mettre la valeur y a l'emplacement donné du tableau
			temp_array = temp_array + 1; //ajouter 1 a temp_array
			//sleep(2);
		}
	}
	
	if (end_cam == true){ //si la caméra à finie d'envoyer ses valeurs
		
		if(temp < temp_array && robot_ready == true){
			decToBinary(tabCO_x[temp],tabCO_y[temp]);
			finEnvoi = true;
			
			temp ++;
			//sleep(1);
		}
		else{
			finEnvoi=false;
		}
	}

}



void _EXIT ProgramExit(void)
{
	// Insert code here 

}
