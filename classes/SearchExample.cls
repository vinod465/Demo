public class SearchExample {
    public String searchval{set;get;}
    public List<Contact> items{set;get;}
    
    public SearchExample(){
        items= new List<Contact>();
    }
        public void myMethod() {
            if(searchval.isNumeric()){
            items = [select Name,Phone from Contact Where Phone=:searchval Limit 5];
            }
            else{
                //ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'You does not belongs to an ISO'));
                items.clear();
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Warning,'Enter only numeric Value'));
            }
       
            
      
        }



}