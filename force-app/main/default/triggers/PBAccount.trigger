trigger PBAccount on Account (after insert) {
    list<contact> relatedconlist=[select id from contact where AccountId=:trigger.newmap.keyset()];
   list<contact> conlist=new list<contact>();
    for(Account a:trigger.new){
        if(relatedconlist.size()==0){
        contact c= new contact();
        c.LastName=a.name;
        c.AccountId=a.Id;
        conlist.add(c);
        }
        else{
            a.addError('Do Not Insert  ');
        }
    } insert conlist;
}