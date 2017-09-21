public class Denomination{
public integer thousands{set;get;}
public integer fivehundreads{set;get;}
public integer hundreads{set;get;}
public integer fifties{set;get;}
public integer tens{set;get;}
public integer fives{set;get;}
public integer twos{set;get;}
public integer ones{set;get;}
public Denomination(){
thousands = fivehundreads = hundreads = fifties = tens = fives = twos = ones = 0;
}
public integer amt{set;get;}
 //Action
public integer amount(){
  amt=(1000*thousands)+(500*fivehundreads)+(100*hundreads)+(50*fifties)+(10*tens)+(5*fives)+(2*twos)+(1*ones);
  return null;
  }
}