trigger contactupdatetesttrigger on Contact (after update) 
{
    if(Recursiveupdatecheckclass.recursiveCheck==True) {
        Recursiveupdatecheckclass.recursiveCheck=false;
 
   system.debug('Recursive trigger');
    list<contact> conlist=[select id, Phone from contact where id=:trigger.newmap.keyset()];
    for (contact c: conlist)
    {
        c.Phone='123';
    }
       update conlist;
}
}