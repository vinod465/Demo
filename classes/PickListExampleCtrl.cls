public class PickListExampleCtrl {

    public String selectedValue{set;get;}
    public List<SelectOption> items {set;get;}
    
    public PickListExampleCtrl(){
    items = new List<SelectOption>();
    
    Schema.DescribeFieldResult fieldResult = Account.Type.getDescribe();
    for(Schema.PicklistEntry p :fieldResult.getPicklistValues()){
        items.add(new SelectOption(p.getValue(),p.getLabel()));
    }
        
    }

}