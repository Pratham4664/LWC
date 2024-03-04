//trigger collegeTrigger on college__c (before update){
  // list <college__c> clglist =trigger.new;
    //system.debug(clglist.size());
    //for(college__c co: clglist){
      //  co.phone__c='7038801306';
    //}
//} 


//trigger collegeTrigger on college__c (after insert){
//system.debug(trigger.new);
//    system.debug('map values'+ trigger.newmap);
//list <college__c> clglist=[select id,Phone__c from college__c where id:trigger.new];
//    for(college__c co:clglist){
//        co.Phone__c='555';
//    } update clglist; 
    
//}


trigger collegeTrigger on college__c (before update){
system.debug('list   ' + trigger.new);
system.debug('map   ' +trigger.newmap);
system.debug('keyset   '+ trigger.newmap.keyset());
    
    set<id> idset= new set<id>();
    for(college__c c:trigger.new)  {
        idset.add(c.id);
    }
    system.debug('records id  '+ idset);
    
}