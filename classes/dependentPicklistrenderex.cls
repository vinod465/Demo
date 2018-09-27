public class dependentPicklistrenderex {

  
    public String statId { get; set; }
    public String counId { get; set; }
    public List<selectOption> options1{set;get;}
    public List<SelectOption> options2{set;get;}

    public List<selectOption> getItems() {
        List<selectOption> options = new List<selectOption>();
        for(Country__C coun:[select id,Name from Country__c Limit 5]){
            options.add(new SelectOption(coun.Id,coun.Name));
        }
        return options;
    }
    
    public void StateValues(){
        options1 = new List<selectOption>();
        for(State__c stat :[Select Id,Name from State__c where Country__c=:counId]){
            options1.add(new SelectOption(stat.Id,stat.Name));
        }
       
    }
    
      public void DistValues() {
        options2 = new List<selectOption>();
          for(District__c dist:[Select Id,Name from District__c where State__c=:statId]){
              options2.add(new SelectOption(dist.Id,dist.Name));
          }
        
    }


}