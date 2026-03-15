public with sharing class GetNameFromEmail {

    public static String getName(String emailAddress){

        String fullName = '';

        String extractedString = emailAddress.substringBefore('@');
        if (String.isNotBlank(extractedString)){
            if(extractedString.contains('_')){
                fullName = extractedString.replace('_', ' ');
            }

        }

        return fullName.toUpperCase();

    }

}