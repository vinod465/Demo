public class sampleRadio{
    public String viewPage{set;get;}
    public String SearchName{set;get;}
    public List<Account> items{set;get;}
    
    public sampleRadio(){
        items = new List<Account>();
    }
    
    public list<SelectOption> getrValues(){
      LIST<SelectOption> options=new LIST<SelectOption>();
      options.add(new SelectOption('SearchByOwner','SearchByOwner'));
      options.add(new SelectOption('SearchByName','SearchByName'));
      return options;
 }

    public pageReference test(){return null;}
    
    public pageReference ViewDetails(){
        if(viewPage==null){
      system.debug('sradioValue');
     }
     else if(viewPage =='SearchByOwner'){
            items = [select Name,Phone from Account Where Owner.Name =:SearchName];
     }
        else if(viewPage =='SearchByName'){
            items = [select Name,Phone from Account Where Name=:SearchName];
        }
      return null;  
     }
    
    

}