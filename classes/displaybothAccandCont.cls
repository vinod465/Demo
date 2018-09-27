public class displaybothAccandCont {
public string SearchTxt{set;get;}
public List<Account> items{set;get;}
public List<Contact> itemsCon{set;get;}
public boolean result{set;get;}

    public displaybothAccandCont(){
    items = new List<Account>();
    itemsCon = new List<Contact>();
        
    }

    public void myMethod(){
        items = [select Name,Phone from Account where Phone=:SearchTxt Limit 5];         
        itemsCon = [select Name,Phone from Contact where Phone=:SearchTxt Limit 5];
         
    }
    
}