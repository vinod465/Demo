public class AccountContactCreation {
public Account acc{set;get;}
    public AccountContactCreation(ApexPages.StandardController controller) {
        acc = new Account();
    }
    public void myMethod(){
        insert acc;
        if(acc.Need_a_Contact__c){
            Contact con = new Contact();
            con.LastName = acc.Name;
            con.Phone = acc.Phone;
            con.AccountId = acc.Id;
            insert con;
        }
    }

}