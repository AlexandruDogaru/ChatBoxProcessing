import processing.net.*; 

Client myClient; 
String inString,messagetoSend,messageSent,userName,userName1;
int n=50,i=0,j=0,nameSent=0;
boolean send=false,write=false;
char data[]={' '},caract;

//interfata
void setup()
{ 
  size(640,440);
  background(115);
  //ip.ul host.ului si portul
  myClient = new Client(this, "188.24.216.32", 2106); 
  
  //dreptunghiul chat.ului
  rect(30,36,width-60,320,15);
  
  rect(30,380,width-140,30,15);
  
  fill(0,115,255);
  rect(550,380,60,30,15);
  
  fill(0);
  text("Chat:",30,20);
  text("Send",565,400);
  text("Enter nickname here:",380,20);
  fill(255);
  rect(515,5,95,20,15);
  

} 

void draw ()
{
    
  switch(nameSent)
  {
    case 0: draw1();
            break;
            
    case 1: draw2();
            break;
  }
//println(i);
}

void keyPressed()
{  
  switch (nameSent)
    {  case 0: tastatura_nume();
               break;
               
       case 1: tastatura();
               break;
    }
}

void mousePressed ()
{
  if(mouseX >= 550 && mouseX<=610 && mouseY>=380 && mouseY<=410)
    {      
            send=true;
            String messagetoSend = new String(data);
            myClient.write(userName1 + ": " + messagetoSend);
            i=j; 
    }
}
