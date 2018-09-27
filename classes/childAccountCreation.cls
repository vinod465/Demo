public with sharing class childAccountCreation {
public Account acc{set;get;}


List<Account> newRec = new List<Account>();
    public childAccountCreation(ApexPages.StandardController controller) {
        acc = new Account();
    }
    public void myMethod(){
      insert acc;
      if(string.isNotBlank(acc.No_Of_Child_Accounts__c)){
          for(Integer i=0;i<Integer.valueOf(acc.No_Of_Child_Accounts__c);i++){
              Account a = new Account();
              a.Name = acc.Name;
              a.AccountNumber = acc.AccountNumber;
              a.ParentId = acc.Id;
              a.Is_Child__c = true;
              newRec.add(a);
          
          }
          insert newRec;
      
      
      }
    
    }

}