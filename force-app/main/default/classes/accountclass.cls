public with sharing class accountclass {
@AuraEnabled
public static Account AccountMethod(string aname,string Banking, string Phone){
system.debug('parameter is   '+aname);
system.debug('parameter is   '+Banking);
system.debug('parameter is   '+Phone);

 Account acc= new Account();
acc.name=aname;
acc.industry=Banking;
acc.Phone=Phone;
insert acc;
return acc;
} 
}