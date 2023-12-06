@isTest
public class ContactTest {

    @isTest
    static void contactInsertedTest() {
        Contact c = new Contact();
        Id acctId = NULL;
        
        acctId = [SELECT Id FROM Account LIMIT 1].Id;
        
        c.LastName = 'Test';
        c.AccountId = acctId;
        
        insert c;
    }
}