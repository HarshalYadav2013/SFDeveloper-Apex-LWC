public with sharing class SplitAmountInFriends {
    public static Decimal splitEqual(Integer numberOfPerson, Decimal billAmount){
        Decimal splitPerPerson = 0;
        if(billAmount != null && numberOfPerson > 0){
            splitPerPerson = billAmount/numberOfPerson;
            return splitPerPerson;
        }
        else{
            return 0;
        }
    }
   
}