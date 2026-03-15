public with sharing class FindHighRevneuAccount {

    public static Account highRevneuAccount(){
        List<Account> myAccount = [Select Id, AnnualRevenue, Name FROM Account WHERE AnnualRevenue != null ORDER BY AnnualRevenue DESC LIMIT 1];
        if(myAccount.size() > 0){
            System.debug('Highest Revenue Account is - ' + myAccount);
            return myAccount[0];
        }

        return null;
    }    
   
}