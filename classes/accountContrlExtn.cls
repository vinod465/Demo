public class accountContrlExtn {
 public Account acc{set;get;}

    public accountContrlExtn(ApexPages.StandardController controller) {
        acc = new Account();
    }
    
    public void myMehtod(){
    List<Account> a  = [Select Id From Account where Name =: acc.name];
    if(a.isEmpty()){    
        if(acc.Are_you_under_ISO__c  && String.isNotBlank(acc.ISO__c)){
             acc.ShippingStreet = acc.BillingStreet; 
             acc.ShippingCity = acc.BillingCity;
             acc.ShippingState = acc.BillingState;
             acc.ShippingPostalCode = acc.BillingPostalCode;
             acc.ShippingCountry = acc.BillingCountry;
             
             insert acc;
        }
        else if(!acc.Are_you_under_ISO__c && String.isNotBlank(acc.ISO__c)){
            System.debug('You are not ISO');
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'You does not belongs to an ISO'));
            
        }
        else{
            System.debug('Please select an ISO');
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Kindly select an ISO'));
        }
    }
    else{
         ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Account Name already exists with this Name'));
    }
        
    
    }

}