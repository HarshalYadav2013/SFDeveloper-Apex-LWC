public with sharing class PullContactAccountRecords {

    public static void displayContactAccountRecords(){
        List<Object> objList = new List<Object>();

        List<Account> accRecords = [SELECT Id, Name FROM Account ORDER BY CreatedDate DESC LIMIT 10];
        List<Contact> conRecords = [SELECT Id, Name FROM Contact ORDER BY CreatedDate DESC LIMIT 10];

        if(accRecords.size() > 0){
            objList.addAll(accRecords);
        }

        if(conRecords.size() > 0){
            objList.addAll(conRecords);
        }

        System.debug('Your Output is ' + objList);

    }
    
}