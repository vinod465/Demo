public class dateTimeEx {
Public Parent__c par{set;get;}

 public dateTimeEx(){
     par = new Parent__c();
 }
 public void save() {
        insert par;
    }

}