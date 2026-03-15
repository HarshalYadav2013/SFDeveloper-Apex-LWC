public with sharing class PullContactEmails {

    public static List<String> reteriveContactEmails(String accountName){
        List<String> allMyContacts = new List<String>();
            List<Contact> contactRecords = [SELECT Id, Email FROM Contact WHERE Account.Name = :accountName];
                if(contactRecords.size() > 0){
                    for(Contact con : contactRecords){
                        if(con.Email != null){
                        allMyContacts.add(con.Email);
                    }
        }
    }

        return allMyContacts;
    }
    
}