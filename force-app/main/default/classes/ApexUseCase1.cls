public with sharing class ApexUseCase1 {
    public static void insertContacts(String firstName, String lastName, String emailAddress){
        List<Contact> conList = new List<Contact>();    
        Contact con = new Contact();
        con.FirstName = firstName;
        con.LastName = lastName;
        con.Email = emailAddress;
        conList.add(con);

        if (conList.isEmpty()){
            system.debug('List is empty');
        }
        else{
            insert conList;

    }
    }
    
}