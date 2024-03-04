trigger collegenewTrigger on college__c (before update) {
  system.debug('map  ' +Trigger.newmap);
    system.debug('keyset' +Trigger.newmap.keyset() );
}