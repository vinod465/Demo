public class insertExample {
    
    public void mymethod(List<String> ls ){
        List<Student__c> student = new List<Student__c>();
        if(ls != null && !ls.isEmpty()){
            for(string s : ls){
                Student__c stu = new Student__c();
                stu.First_Name__c = s;
                student.add(stu);
                
                
            }
               insert student; 
                System.debug('Student rec'+student);  
            }
            
        }
    }