public class CevreHesap {
    //Properties //non-static
    public  integer cevre;
    //polymorphsm
    public  integer cevHes(Integer a,Integer b, integer c){
        
        cevre=a+b+c;
        system.debug('Ucgenin cevresi '+cevre);
            return cevre;
    }
    
    public  integer cevHes(Integer a,Integer b, integer c,integer d){
        
        cevre=a+b+c+d;
        system.debug('dikdörtgenin cevresi '+cevre);
            return cevre;
    }
    
}