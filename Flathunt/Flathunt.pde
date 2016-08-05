int budget ;
PImage logo;

void setup() {
  size(523, 290);
  budget = 0;
  logo = loadImage("flathunt.jpg");
  image(logo, 0, 0, width, height);
}

void draw() {
}

void keyPressed() {
  println(one);
  println(two);
  println(three);
  println(enter);
  println(four);
  println(b11);
  println(b2);
  println(b32);
  println(b21);
  println(b22);
}

String one = "Welcome to New York!\nHope you\'re dwelling 24h on this incredible city and not stuck somewhere for weeks on the same building :)";
String enter = "Press enter to continue";
String two = "It's time to look for a place to live.\nYou don't have time nor budget but hurry up before you're left out at the hands of Eva Lair\'sj BNB…";
String three = "You have a $900 budget to find a place. Do you your best not to starve!";
String four = "OK, so where do you want to start looking?\nPress B for Brooklyn, Q for Queens and M for Manhattan";
String b11 = "Press 1 if you want a flat for yourself\nOr 2 if you don't mind sharing a place";
String b2 = "You'd love to live along the L train, right? Press 1 if so\nOr 2, if Far Rockaway doesn't sound too exotic…";
String b32 = "LOL so you don't mind fishing for eating. Good plan!\nEND OF GAME";
String b21 = "Smart economics. With how many people? Choose 5 or 2 on your keyboard";