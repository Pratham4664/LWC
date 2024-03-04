public with sharing class lwcClass {
    @AuraEnabled(cacheable=true)

    public static string lwcMethod() {
      system.debug('This is Apex Class');
        return 'DONE';
    }
}