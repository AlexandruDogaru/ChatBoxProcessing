 void draw1()
{

  
  if(write)
    {
      fill(255);
      rect(515,5,95,20,15);
      String userName=new String(data);
      userName1=userName;
      fill(0);
      text(userName,518,20);
      write=false;
    }
}
