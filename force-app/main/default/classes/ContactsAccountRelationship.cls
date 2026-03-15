public with sharing class ContactsAccountRelationship {

    public static Boolean checkContactParentRelation(Contact conRecord1, Contact conRecord2){
        if(conRecord1 != null && conRecord2 != null){
            if(conRecord1.AccountId != null && conRecord2.AccountId != null){
                if(conRecord1.AccountId == conRecord2.AccountId){
                    return true;
                }
            }
        }

        return false;

    }
   
}

/* Anonomyus Consol

Contact con1 = [SELECT Id, AccountId FROM Contact Where Id = '003gL000008d8qqQAA' LIMIT 1];
Contact con2 = [SELECT Id, AccountId FROM Contact Where Id = '003gL000008d8qrQAA' LIMIT 1];

System.debug(ContactsAccountRelationship.checkContactParentRelation(con1, con2));

*/