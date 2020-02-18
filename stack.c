# include "stack.h"
//! Indice del ultimo elemento
int top=-1;
//! Numero maximo de elementos del stack
#define max 10
//! El stack
int stack[max];
void push(int m){   
	top++;   
	stack[top]=m;
}

int pop(){   
	   
	if(top==-1)
		return(top);   
	else   
	{      	int j;
		j=stack[top];      
		top--;      
		return(j);   
	}
}
