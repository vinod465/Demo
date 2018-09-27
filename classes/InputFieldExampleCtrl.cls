public class InputFieldExampleCtrl {
public Account acc{set;get;}

    public InputFieldExampleCtrl(ApexPages.StandardController controller) {
        acc = new Account();
    }
    public void mymethod(){
        if(acc.Description.length()>32000){
            system.debug('error........');
        }
        else{
            insert acc;
        }
    }

}