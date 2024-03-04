trigger TriggerOfContextS on Account (before insert,after insert, before update, after update, before delete, after delete, after undelete) {
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('this is before insert');
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('this is before update');
    }
}