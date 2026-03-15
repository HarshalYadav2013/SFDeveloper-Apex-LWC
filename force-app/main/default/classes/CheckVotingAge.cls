public with sharing class CheckVotingAge {
    public static void checkPersonAge(Date birthDate){
        Date todayDate = System.today();
        Integer checkAge = birthdate.daysBetween(todayDate)/365;
        if(checkAge >= 18){
            System.debug('You can caste your vote as your current age is - ' + checkAge);
        }
        else {
            System.debug('You can\'t caste your vote as your current age is - ' + checkAge);
        }

    }
    
}