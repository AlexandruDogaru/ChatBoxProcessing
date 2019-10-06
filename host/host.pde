import processing.net.*;

Server myServer;
char data[]={' '},caract;
String messagetoSend,messageSent,inString;
int i=0,j=0,n=45;
boolean send=false,write=false,received=false;

void setup ()
{
  size(300,300);
  background(115);
  myServer = new Server(this,2106,"192.168.1.100");
}

void draw ()
{
  Client thisClient=myServer.available();
  if(thisClient != null)
    {
      String inString = thisClient.readString();
      received = true;
      if(received)
        {
         received=false;
         println(inString);
         myServer.write(inString);
        }
    }
}
