public class RenderExamle {

    public String searchVal { get; set; }
    
    public List<Account> items { get; set; }

    public void  ymethod() {
       
       items = [Select Name, Phone From Account where Name=:searchVal];
       system.debug(items);
    }


public boolean vis{set;get;}

public RenderExamle(){
items = new List<Account>();
}

}