public class cashtable{
public general ge{get;set;}
public general ge1{get;set;}
public list<general> listge{get;set;}
public list<account> listacc{get;set;}
public cashtable(){
ge=new general();
ge1=new general();
listge=new list<general>();
listacc=[select name from account limit 1];
ge.location='1';
ge.name=listacc[0].name;
ge.code='';
ge.date1='';
ge.description='';
ge.curency='';
listge.add(ge);
ge1.location='';
ge1.name='';
ge1.code='';
ge1.date1='';
ge1.description='initial primium';
ge1.curency='5000';
listge.add(ge1);
}
public class general{
public string location{get;set;}
public string name{get;set;}
public string code{get;set;}
public string date1{get;set;}
public string description{get;set;}
public string curency{get;set;}
public general(){

}
public general(string location,string name,string code,string date1,string description,string curency){
this.location=location;
this.name=name;
this.code=code;
this.date1=date1;
this.description=description;
this.curency=curency;

}

}
}