public class dependentPickListEx {

    
    public String accid {get;set;}
    public List<selectOption> ConItems{set;get;}
    
   /* public dependentPickListEx(){
        ConItems = new List<selectOption>();
    }*/
    
    public List<SelectOption> getItems() {
         List<SelectOption> options = new List<SelectOption>();
         for(Account acc: [Select Name,Id from Account Limit 5]){
         options.add(new SelectOption(acc.Id,acc.Name));
         }
         return options;
    }
    public void conRec() {
        ConItems = new List<selectOption>();
        for(Contact c : [select Name,id from Contact where AccountId=:accid]){
           ConItems.add(new SelectOption(c.Id,c.Name)); 
        }
    }


}