 void draw2()
 {
  if (myClient.available() > 0)
    { 
      inString = myClient.readString(); 
      fill(0,0,255);
      text("> " + inString,40,n);
      n=n+15;
    }
  if(write)
    {
      fill(255);
      rect(30,380,width-140,30,15);
      String messageSent=new String(data);
      fill(0);
      text(messageSent,40,400);
      write=false;
    }
   if(send)
    {
      fill(255);
      rect(30,380,width-140,30,15);
      send=false;
    }
   if(n>350)
    {
      fill(255);
      rect(30,36,width-60,320,15);
      n=45;
    }
 }
