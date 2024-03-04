//trigger ChildToParent on Contact (before update) {
//set<id> accidset= new set<id>();
//   for(contact c:trigger.new){
//        if(c.Phone=='123'){
//            accidset.add(c.AccountId);
//        }
//    }
//    list<Account> acclist=[select id, Phone from Account where id=:accidset];
//    system.debug('acc list  '+acclist);
//    for(Account aa:acclist){
//        aa.Phone='666';
//    }
//    update acclist;
//}

trigger ChildToParent on Contact (before update) {   
    
set<id> accidset= new set<id>();
    for(contact c:trigger.new){
        system.debug('old map  '+trigger.oldMap.get(c.id).Phone);
        system.debug('New map  '+trigger.newMap.get(c.id).Phone);
       if(trigger.oldMap.get(c.id).Phone!=trigger.newMap.get(c.id).Phone){
            accidset.add(c.AccountId);
       }       
    }
    list<Account> acclist=[select id, Phone from Account where id=:accidset];
     system.debug('acc list  '+acclist);
    if(acclist.size()>0){
    for(Account aa: acclist){
        aa.Phone='456';
    }
    update acclist;
}
}