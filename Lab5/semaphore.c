#include<stdio.h>
struct semaphore{
	int value;
	int queue[2]; 
};
int item=0;
void enqueue(struct semaphore s,int pid){
	if(s.queue[0]==0)
	s.queue[0]=pid;
	else if(s.queue[1]==0)
	s.queue[1]=pid;
	else
	printf("Queue is full");
	
}
void dequeue(struct semaphore s){
	 if(s.queue[0]!=0){
	s.queue[0]=s.queue[1];	
	 s.queue[1]=0;
}		
}

void semwait(struct semaphore s,int pid){
	if(s.value==1)
	s.value=0;
	else
	enqueue(s,pid);
}

void semsignal(struct semaphore s){
	s.value=0;
	dequeue(s);
}

void producer(struct semaphore s,int pid){
	semwait(s,pid);
	if(item==0){
	item=1;
	printf("\nItem:%d ",item);
	}
	else{
	printf("Buffer is Full");
	printf("\nItem:%d",item);
	}
	semsignal(s);	
}

void consumer1(struct semaphore s,int pid){
	semwait(s,pid);
	if(item==1){
	item=0;
	printf("\nItem:%d",item);
	}
	else{
	printf("Buffer is empty");
	printf("\nItem:%d",item);
	}
semsignal(s);	
}

void consumer2(struct semaphore s,int pid){
	semwait(s,pid);
	if(item==1){
	item=0;
	printf("\nItem:%d",item);
	}	
	else{
	printf("Buffer is empty");
	printf("\nItem:%d",item);
	}
	semsignal(s);	
}

int main(){
struct semaphore s;
s.value=1;
s.queue[0]=0;
s.queue[1]=0;
int choice;
while(1)
{
printf("\n\n\n###Enter your choice \n1.Producer\n2.Consumer1\n3.Consumer2\n");
scanf("%d",&choice);
switch (choice)
{
	case 1:
	producer(s,1);
	break;
	case 2:
	consumer1(s,2);
	break;
	case 3:
	consumer2(s,3);
	break;
}
}
}




