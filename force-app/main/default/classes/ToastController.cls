public class ToastController {

    @AuraEnabled
    public static void createAccountWithName(String accountName){
        insert new Account (Name = accountName);
    }
}