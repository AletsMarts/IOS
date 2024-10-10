//
//  main.c
//  AppArchivosTexto
//
//  Created by Guest User on 30/08/24.
//

#include <stdio.h>
#include <stdlib.h>
const int MAX = 255;

int main(int argc, char *argv[])
{


 int numerador= 0;
 int linea= 1;

 if(argc < 2){
  printf("uso: %s [-n]<nombre_del_archivo>", argv[0]);
  return 1;

 }

 if(strcmp(argv[1], "-n")==0){
  numerador = 1;
 }

const char *filename = numerador ? argv[2] : argv[1];

 
   printf("NOMBRE DE LA APLICACION : %s \n",argv[0]);
   printf("NOMBRE DEL ARCHIVO A ABRIR : %s \n",filename);

   FILE *archivo;
   if( (archivo = fopen(argv[1],"r"))== NULL)  //  NULL == 0
   {
     printf("ERROR, archivo no encontrado \n");
     exit(1);
   }
   char buf[MAX];
   

while (fgets(buf, MAX, archivo)!= NULL){
  if(numerador){
      printf("%d. %s", linea++, buf);
  }else{
    printf("%s", buf);
  }
}

   fclose(archivo);
   
   return 0;
}


