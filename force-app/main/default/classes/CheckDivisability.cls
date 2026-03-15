public with sharing class CheckDivisability {

    public static Boolean checkSevElevenDisiviability(Integer checkNumber){
        if(checkNumber != null){
            if(Math.mod(checkNumber, 7) == 0 && Math.mod(checkNumber, 11) == 0){
                
                return true;
            }
        }
        return false;

    }
   
}