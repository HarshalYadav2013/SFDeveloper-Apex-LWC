public with sharing class LoggedInUserDetails {

    public static UserInfoWrapper getLoggedUserDetails(){
        UserInfoWrapper wrapper = new UserInfoWrapper();
        wrapper.localeInfo = UserInfo.getLocale();
        wrapper.timeZoneInfo = String.valueOf(UserInfo.getTimeZone());
        String userId = UserInfo.getUserId();

        List<User> userRecords = [Select Id, LastLoginDate FROM User WHERE Id = :userId LIMIT 1];
        if(userRecords.size() > 0){
            if(userRecords[0].LastLoginDate != null){
                wrapper.lasLoginInfo = userRecords[0].LastLoginDate;
            }
        }

        return wrapper;

    }

    public class UserInfoWrapper{
        public Datetime lasLoginInfo;
        public String localeInfo;
        public String timeZoneInfo;

    }
    
}