public class Rectangle{

       public integer length{set;get;}
       public integer breadth{set;get;}
       public integer area{set;get;}
       public integer perimeter{set;get;}
//create
    public Rectangle() {
    length=breadth=7;
    }
       
    /*public rectangle(integer len,integer bre){
    length=len;
    breadth=bre;
    }*/
    //action4
    public integer area(){
    area=length*breadth;
    return null;
    }
       public integer perimeter(){
       perimeter=2*(length+breadth);
       return null;
       }
       
       public void getValues(){  
       system.debug('the length of the rectangle is' + length);
       system.debug('the breadth of the rectangle is' + breadth);
       }
}