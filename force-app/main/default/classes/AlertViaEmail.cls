public with sharing class AlertViaEmail {
    public static void sendAlertEmail(String emailAddress){
        if(!String.isBlank(emailAddress)){

            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            List<String> toAddressList = new List<String>{emailAddress};

            mail.setSubject('Warning: You are under radar');
            mail.setPlainTextBody('We have been watching you, why you took 2 days leave');
            mail.setToAddresses(toAddressList);

            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }


    }
   
}