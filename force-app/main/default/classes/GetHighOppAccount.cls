public with sharing class GetHighOppAccount {

    public static Set<String> getHighValueAccounts(){
        Set<String> myUniqueAccounts = new Set<String>();
        List<Opportunity> highValueAccounts = [Select Id, Name, Account.Name, Amount FROM Opportunity WHERE Amount > 80000];
        for(Opportunity opp : highValueAccounts){
            myUniqueAccounts.add(opp.Account.Name);
        }
        return myUniqueAccounts;
    }
    
}