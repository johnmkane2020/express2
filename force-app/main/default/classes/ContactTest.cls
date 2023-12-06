@isTest
public class ContactTest {
    
    public static void setup() {
        Account acct = new Account();
        acct.Name = 'Test Account';
        insert acct;
    }

    @isTest
    public static void contactInsertedTest() {
        setup();
        Contact c = new Contact();
        Id acctId = NULL;
        
        acctId = [SELECT Id FROM Account LIMIT 1].Id;
        c.LastName = 'Test';
        c.AccountId = acctId;
        
        insert c;
    }
}