
 


Table table;

void setup(){
size(1000,720);
background(0);

  table = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv", "header");//for fat i listen fra internettet
int l;//længde af mellemrum mellem søjler
int l2;// mellemrum mellem text
l = 0;
l2 = 0;
for(TableRow row: table.rows()){//no clue hvad det gør
String state = row.getString("state");//for fat i stater
int area = row.getInt("area (sq. mi)");// for fat i areal
l = l + 20; //regn mellem rum af søjler 
l2 = l2 + 50; 
int h = area/1000;//gør søjlerne mindre så de passer vinduet
text(state, l2,700);//Tegner text. 
rect(l, 0,20,h);//tegner søjlerne 


  
  }
 }

 
