public with sharing class CheckAccConRelationship {
    public static Boolean checkParentChildRelationship(String accountName, String contactName){
        List<Contact> accconRelation = [SELECT Id FROM Contact WHERE Name = :contactName AND Account.Name = :accountName];
        if(accconRelation.size() > 0){
            return true;
        }

        return false;
    }
  
}