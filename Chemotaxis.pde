 Bacteria[] A;  
 void setup()   
 {   
 	size(300,300);
	

	A = new Bacteria[200];
 	for (int i=0; i<A.length; i++)
 	{
 		A[i] = new Bacteria();
 	}

 }   
 void draw()   
 {
 	background(200);

 	
 	for (int i=0; i<A.length; i++)
 	{
 		
 		A[i].show();
 		A[i].walk();

	}

	   
 }  
 class Bacteria    
 {
 	int myX;
 	int myY;
 	int size;

 	Bacteria() 
 	{
 		myX = (int)(Math.random()*150 -10);
 		myY = (int)(Math.random()*150 -10);
 		size = 3;
 		//dirctn = Math.PI*2*Math.random();
	}
	void walk()
	{
		//myX = myX + (int)(Math.random()*4 -2);
 		//myY = myY + (int)(Math.random()*4 -2);

 		if(mouseX > myX)
 		{
 			myX = myX + (int)(Math.random()*5 -1);
 		}else{
 			myX = myX + (int)(Math.random()*5 -3);
		}

		if(mouseY > myY)
		{
			myY = myY + (int)(Math.random()*5 -1);
		}else{
			myY = myY + (int)(Math.random()*5 -3);
		}


	} 
 	void show()
 	{
 		//ant body
 		fill(200,100,50);
 		ellipse(myX,myY,3,3);
 		ellipse(myX-2,myY,3,3);
 		ellipse(myX-5,myY,3,3);
 		//Antena
 		line(myX,myY,myX+1,myY-4);
 		line(myX,myY,myX+3,myY-4);

 		
 	} 
 }    