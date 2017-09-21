public class Child extends Parent{

private Integer C_priX=70;
public Integer C_pubY=80;
public override void getValues(){
// system.debug('the parent private no'+P_priX);
system.debug('the parent public no'+P_pubY);
system.debug('the parent protected no '+P_pttZ);
system.debug('the child private no'+C_priX);
system.debug('the child public no'+C_pubY);
}

public override void setValues(){
system.debug('this method is override the abstract methods');

}
}