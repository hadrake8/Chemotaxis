 Bacteria A;  
 void setup()   
 {   
 	size(300,300);
	noLoop();
 }   
 void draw()   
 {
 	background(200);

 	A = new Bacteria(x,y);
 	A.show();


 	   
 }  
 class Bacteria    
 {
 	int myX;
 	int myY;
 	int size;

 	Bacteria(int x, int y) 
 	{
 		myX = x;
 		myY = y;
 		size = (Math.random()*4 +1);

 	} 
 	void show()
 	{
 		fill(200,100,50);
 		ellipse(myX,myY,size,size);
 	} 
 }    