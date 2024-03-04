trigger AccountTriggerNew on Account (before update){ 
 system.debug('Account Id    '+trigger.newmap.keyset());
    list<Contact> conlist=[select id, lastname from Contact where AccountId=:trigger.newmap.keyset()];
    system.debug('Related Contacts'+ conlist);
}