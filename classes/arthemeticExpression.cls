public class arthemeticExpression{

public void mymethod(Integer i,Integer j,String k){
    if(k =='+'){
        System.debug(i+j);
    }
    else if(k == '-'){
       System.debug(i-j); 
    }
    else if(k == '%'){
        System.debug(math.mod(i,j));
    }
    else if(k == '/'){
        System.debug(i/j);
    }
}
}