public class actionfunctionexample{

   public String CounId{set;get;}
   public String StateId{set;get;}
   public String DistId{set;get;}
    
    public list<SelectOption> options{set;get;}
    public list<SelectOption> options1{set;get;}
    public list<SelectOption> options2{set;get;}
    
    
    public actionfunctionexample(){
        options=new list<SelectOption>();
        options1=new list<SelectOption>();
        options2=new list<SelectOption>();   
        for(Country__c coun:[select id,name from Country__c order By Name asc Limit 5]){
            options.add(new SelectOption(coun.id,coun.name));
          }
     }
    public void stateValues(){
       if(CounId=='--select--'||CounId=='--other--'){
       options1.clear();
       }
        else{
            options1.clear();
            for(State__c stat:[select id,name from State__c where Country__c=:CounId order By Name asc]){
            options1.add(new SelectOption(stat.id,stat.name));
            }
        }
    }
     public void DistValues(){
           if(StateId=='--select--'||StateId=='--other--'){
           options2.clear();
           }
            else{
                options2.clear();
                for(District__c dis:[select id,name from District__c where State__C=:StateId Order By Name asc]){
                options2.add(new SelectOption(dis.id,dis.name));
                }
            }
     
     }
   

}