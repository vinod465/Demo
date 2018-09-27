public class RadioButtonEx1{

public String searchTxt{set;get;}
public List<Account> items{set;get;}
public String displayradiovalue{set;get;}

public RadioButtonEx1(){
     items = new List<Account>();
}

public void myMethod(){
  if(displayradiovalue == 'SearchByOwner'){
   items = [select Name,Phone from Account where Owner.Name =: searchTxt];
    }
   else if(displayradiovalue == 'SearchByName'){
    items = [select Name,Phone from Account where Name =: searchTxt];
   }
}

}