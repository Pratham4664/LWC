public with sharing class accrecorddisplay{
    @AuraEnabled(cacheable=true)
        public static List<Account> accrecordmethod(){

    List<Account> acclist = [select id,Name,Phone,Industry from Account limit 10];

    return acclist;
    }
}