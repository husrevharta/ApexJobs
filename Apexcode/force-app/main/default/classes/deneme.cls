public class deneme {
public static integer x=15;
public static string y='Hello Class';
    public static decimal z=3.14;
    public static void Mesaj(){//void yerine butun class 
    system.debug('Hello Class');
    }
    public static integer Topla (integer a, integer b ){
        integer sonuc=a+b;
        return sonuc;	
    }
    public static integer MaxBul(integer v, integer t) {
        integer giden;
        if(v>t){
            giden=v;
                } else {
                    giden=t;
                }
        return giden;
        
    }
    
    
    
    
    
}