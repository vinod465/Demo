public class AccountInformation {
    
    public Account acc{get;set;}
    
    Public AccountInformation(){
        
        acc = new Account();
    }
    
    Public void Save(){
        insert acc;
        System.debug('Acc Info'+acc);
        
    }

}