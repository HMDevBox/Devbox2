// Added the changes for testing
public class CollectionTest{
     public static testMethod void main(){
     
     List<string> names=new List<string>();
     set<Integer> mob_nos=new set<Integer>();
     map<string,String> concurr=new map<string,String>();
     //list collection
     names.add('raju');
     names.add('ravi');
     names.add('malli');
     names.add('karan');
     names.add('vijay');
     names.add('sashi');
     //set collection
     mob_nos.add(3456);
     mob_nos.add(2378);
     mob_nos.add(5671);
     mob_nos.add(4361);
     mob_nos.add(7281);
     //map collection
     concurr.put('india','rupee');
     concurr.put('usa','dollar');
     concurr.put('uk','pound');
     concurr.put('swedan','crona');
     names.add('raju');
     mob_nos.add(2378);
     system.debug('collection of list type is'+names);
     system.debug('collection of set type' +  mob_nos);
     system.debug('collection of map type' +  concurr);
     for(string name : names){
     system.debug('my name is'+name);
         
     }
     for (Integer nos : mob_nos){
     system.debug('my mob no is' + nos);
     }
     
     mob_nos.remove(3456);
     system.debug('collection of set type' +  mob_nos);
     concurr.get('india');
     concurr.put('uk','pound');   
     system.debug('collection of map type' +  concurr); 
     concurr.remove('india');
     system.debug('collection of map type' +  concurr);
     
     }
}
