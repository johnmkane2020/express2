trigger ContactBefore on Contact (before insert, before update) {

    if(Trigger.isBefore && Trigger.IsInsert) {
        ContactHandler.contactInserted(Trigger.new);
    }
}