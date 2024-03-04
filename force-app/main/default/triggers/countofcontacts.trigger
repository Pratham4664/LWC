trigger countofcontacts on Contact (after insert) {
system.debug('count of contacts '+trigger.NewMap);
    set<id> accid= new set<id>();
    for(contact c:[select id, AccountId from contact where id=:trigger.newmap.keyset()]){
      accid.add(c.AccountId);
    }
    list<Account> acclist=[select id, count_of_contacts__c,(select id from contacts)from Account where id=:accid];
    for (Account ac: acclist){
        ac.count_of_contacts__c=ac.contacts.size();
    } update acclist;
}