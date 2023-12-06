public class ContactHandler {
    
    public static void contactInserted(List<Contact> conts) {
        for(Contact c : conts) {
            if(c.LeadSource == NULL) {
                c.LeadSource = 'Partner';
            }
        }
    }

}