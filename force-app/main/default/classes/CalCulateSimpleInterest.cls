public with sharing class CalCulateSimpleInterest {
    public static Decimal calculateSI(Decimal principal, Decimal Interest, Integer timeInYear){
        if(principal != null && interest != null && timeInYear != null){
        Decimal simpleInterest = (principal * Interest* timeInYear)/100;
        system.debug('Simple interest is : '+ simpleInterest);
        return simpleInterest;

        }

        else{   
            system.debug('One of the value is missing');
            return 0;

        }

    }
    

}