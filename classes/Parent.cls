public abstract class Parent{

private Integer P_priX=50;
public Integer P_pubY=60;
protected Integer P_pttZ=100;

public virtual void getValues(){
system.debug('the parent private no '+P_priX);
system.debug('the parent public no '+P_pubY);
system.debug('the parent protected no '+P_pttZ);
}
public abstract void setValues();
}