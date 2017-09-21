public class triangle{
integer base;
integer height;
public void setvalues(integer b,integer h){
base=b;
height=h;
}
public void getvalues(){
system.debug('base of tra' + base);
system.debug('height of tra'+ height);
}
public integer area(){
integer ar=(base*height)/2;
return ar;
}
}