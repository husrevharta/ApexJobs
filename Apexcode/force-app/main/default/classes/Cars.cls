public class Cars {
    //Properties
    private integer model;
     private string color;
     private string packet;
     private integer maxSpeed;
     private integer speed=0;
     private integer brake=0;
      
    //Setter methods
    
    public void setModel (integer carModel){
        model=carModel;
    }
    public void setColor (string carColor){
        color=carColor;
    }
    public void setPacket (string carPacket){
        packet=carPacket;
    }  
    public void setMaxSpeed (integer carMaxSpeed){
        maxSpeed=carMaxSpeed;
    }
    
    //getter methods
    
    public integer getModel(){
        return model;            
    }
    public string getColor(){
        return color;            
    }
    public string getPacket(){
        return packet;            
    }
    public integer getMaxSpeed(){
        return maxSpeed;            
    }
    
     public void run(){
        System.debug('Araba calisti');
    }
    public void stop(){
        System.debug('Araba durdu');
    }
    public integer hizlanma(integer hizlanma){
        speed= hizlanma + speed;
        
        if(speed<maxSpeed){
            system.debug('Arabanin hizi '+ speed );
        }
            else{
                system.debug('Bu arabanin hizi: '+ speed);
            }
            return speed;
        }
          public integer brake(integer brake){
        speed= speed - brake;
        
        if(speed>0){
            system.debug('Arabanin hizi '+ speed );
        }
            else{
                system.debug('Bu arabanin hizi: 0');
            }
            return speed;
          }
        
}