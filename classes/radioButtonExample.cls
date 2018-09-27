public class radioButtonExample{
    public String sValue {get;set;}
    public String searchTxt {get;set;}
    public List<Account> accRec {set;get;}
    
 public radioButtonExample(){
    accRec = new List<Account>();

 }

  public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('SearchByOwner','SearchByOwner'));
        options.add(new SelectOption('SearchByName','SearchByName'));
        return options;
    }
   public PageReference test() {
        return null;
 }


 public pageReference myMethod(){
     if(sValue==null){
      system.debug('sradioValue');
     }
     else if(sValue =='SearchByOwner'){
            accRec = [select Name,Phone from Account Where Owner.Name =:searchTxt];
     }
        else if(sValue =='SearchByName'){
            accRec = [select Name,Phone from Account Where Name=:searchTxt];
        }
        return null;
     }
 
 }