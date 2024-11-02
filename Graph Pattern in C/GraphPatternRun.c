#include <time.h>
#include<stdio.h>
#include<conio.h>



void delay(unsigned int mseconds)
{
    clock_t goal = mseconds + clock();
    while (goal > clock());
}

main()
{
int r,c,j,n,item[5],i;

time_t mytime;
mytime = time(NULL);

Start:

printf("\n\n");

printf("\n  * Clock:-\n\n");
mytime = time(NULL);
printf("  ");
printf(ctime(&mytime));

//printf("\nEnter Iteams  \n");	


for(i=1;i<=5;i++)
{

item[i] = rand() % 100 ;
//scanf("%d",&item[i]);

}



printf("\n\n  * Graph:-\n\n"); //Graph


    n=100;

for(r=10;r>=0;r--)  //Rows
{

   	if(r==0)
	{
		printf(" ");
	}	
	j=7;  //j=5
	i=0;
	
for(c=1;c<=31;c++)  //Columns
{
	
	if(c==1)
	{
		if(r==10)
		{
			printf("  %d",n); // print 100
		}
		else
		{
			printf("   %d",n);  // print 10,20,30........90
		}
		n=n-10;
	}

	else if(c==j) 
	{
		i++;
		if(r>0)  // Array here...........
		{
			if(r==item[i]/10)  
			printf("^");
			//printf("%d",item[i]);
			else if(r<item[i]/10)  
			printf("|");
			else
			printf(" ");//+
		}
	
		if(r==0)
		{
			if(item[i]==0||item[i]>=10)
			printf("|");
			else 
			printf("^");			
		}
	
		j=j+5;
		
	}
	
	else if(r==0)
	{
		printf("-");
	}
		
	else
	{
		printf(" ");
	}

}// end column

printf("\n");

}//end row

	
	if(r==-1)
	{
		printf("    ");
		j=6;
		i=1;
		for(c=1;c<=14;c++)  //Columns
		{
		
		if(c==j) 
		{
		 	printf("SUB%d",i++);
		 	j=j+2;
		}
		else
		{
			printf(" ");
		}
	
		}
	
	
	printf("\n    ");
		j=7;
		i=1;
		for(c=1;c<=21;c++)  //Columns
		{
		
		if(c==j) 
		{
		 	printf("%d",item[i++]);
		 	printf("%%");
		 	j=j+3;
		}
		else
		{
			printf(" ");
		}
	
		}
	
	}
	
	
printf("\n\n\t $Thank you...$\n Made by @ Niraj* ");

delay(1000);
system("cls");

goto Start;

getch();

}


