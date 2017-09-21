Public class DenominationExt{
public integer thousands{set;get;}
public integer hundreads{set;get;}
public integer fifties{set;get;}
public integer tens{set;get;}
public integer fives{set;get;}
public integer twos{set;get;}
public integer ones{set;get;}
public integer amt{set;get;}
/* public Denomination(){
thousands = hundreads = fifties = tens = fives = twos = ones = 0;
} */

 //Action
public DenominationExt(ApexPages.StandardController stdController) {
thousands = hundreads = fifties = tens = fives = twos = ones = 0;
}
public integer amount(){
  amt=(1000*thousands)+(100*hundreads)+(50*fifties)+(10*tens)+(5*fives)+(2*twos)+(1*ones);
  return null;
  }

}