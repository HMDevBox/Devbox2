public class newbankaccc {
public integer accno{set;get;}
public string accname{set;get;}
public integer balance{set;get;}
public integer deposit{set;get;}
public integer withdraw{set;get;}
public void dp(){
balance= balance+deposit;
}
public void wd(){
balance=balance-withdraw;
}
}