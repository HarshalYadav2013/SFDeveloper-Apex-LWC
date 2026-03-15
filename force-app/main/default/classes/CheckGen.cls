public with sharing class CheckGen {

    public static void checkGenWithBirthYear(Integer birthYear){
        String generationName = '';
        if(birthYear >= 1980  && birthYear <= 1994 ){

            generationName = 'Millennials';
            System.debug('Hello!' + generationName +'. Hope you enjoy the village life');

        }
        else if(birthYear >= 1995  && birthYear <= 2009){
            generationName = 'Gen Z';
            System.debug('Hello!' + generationName +'. Hope you enjoy the mobilephone life');
        }

        else if(birthYear >= 2010  && birthYear <= 2024){
            generationName = 'Gen Alpha';
            System.debug('Hello!' + generationName +'. Salesforce makes sense');
        }
        }

    }
  
