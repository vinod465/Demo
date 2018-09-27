Public class inputTextEditEx{

public Contact con{set;get;}
public string accId{set;get;}
public Opportunity opp{set;get;}

    public List<selectOption> getAccItems() {
    
    List<SelectOption> option = new List<selectOption>();
    for(Account acc:[select Id,Name from Account Limit 5]){
        option.add(new SelectOption(acc.Id,acc.Name));
    }
        return option;
    }

        public Void updateCon() {
         if ((con.Name != null && con.Name != '')&&(opp.Name !=null && opp.Name !='')){
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Record insert successfully'));
          }
          update con;
          update opp;
    }

        public void conDetails() {
          //con = new Contact();
          con = [select id,Name,Phone,MobilePhone,Fax,Languages__c,LastName,FirstName from Contact where AccountId=:accId Limit 1];
          opp = [select id,Name,StageName,Type,Description,OrderNumber__c,TrackingNumber__c from Opportunity where AccountId =: accId Limit 1];
          
    }





}