public class point{
       // data members
       Integer x_co;
       Integer y_co;
       //member methods
       public point(){
       x_co=13;
       y_co=17;
       }
       public point(integer x,integer y){
       x_co=x;
       y_co=y;
       }
       public void input(Integer x,Integer y){
       x_co=x;
       y_co=y;
       }
       public void output(){
       system.debug('x_co is at'+x_co);
       system.debug('y_co is at'+y_co);
       }
}