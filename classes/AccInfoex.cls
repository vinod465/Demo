public class AccInfoex {

    public String name{get;set;}
    public String phone{get;set;}
    public String Accnum{get;set;}
    public String website{get;set;}
    public String billingstrt{get;set;}
    public String billingcty{get;set;}
    public String billingstate{get;set;}
    public String billingpc{get;set;}
    public String billingCountry{get;set;}
    public String slaexpi{get;set;}
    public Integer noLo{get;set;}
    public String type{set;get;}
    public List<SelectOption> items{set;get;}
    public String rating{set;get;}
    public List<SelectOption> items1{set;get;}
    
   /* Public AccInfoex(){
    
        items = new List<SelectOption>();
        Schema.DescribeFieldResult fieldResult = Account.Type.getDescribe();
        for(Schema.PicklistEntry p : fieldResult.getPickListValues()){
            system.debug('p'+p);
            items.add(new SelectOption(p.getValue(),p.getLabel()));
        }
        items1 = new List<SelectOption>();
        Schema.DescribeFieldResult fieldResult1 = Account.Rating.getDescribe();
        for(Schema.PicklistEntry p1 : fieldResult1.getPickListValues()){
            system.debug('p1'+p1);
            items1.add(new SelectOption(p1.getValue(),p1.getLabel()));
        }
    
    }*/
    
    
     public List<SelectOption> getTypeOptions()
     {
        
           items = new List<SelectOption>();
           Schema.DescribeFieldResult fieldResult = Account.Type.getDescribe();
           for(Schema.PicklistEntry p : fieldResult.getPicklistValues()){
               items.add(new SelectOption(p.getValue(), p.getValue())); 
            }
           return items;
           
     }
    public void mymethod(){
        Account acc = new Account();
        acc.Name = name;
        acc.Phone = phone;
        acc.AccountNumber = Accnum;
        acc.BillingStreet = billingstrt;
        acc.BillingCity = billingcty;
        acc.BillingState = billingstate;
        acc.BillingPostalCode = billingpc;
        acc.NumberofLocations__c = noLo;
        acc.Type = type;
        acc.Rating = rating;
        insert acc;
        System.debug('Acc info'+acc);
        
    }
   
}