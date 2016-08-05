int budget ;
int step = 3;
String one = "Welcome to New York!\nHope you\'re dwelling 24h on this incredible city and not stuck somewhere for weeks on the same building :)";
String enter = "Press enter to continue";
String jersey = "Aha, good try! NYC only! Press enter to try again";
String two = "It's time to look for a place to live.\nYou don't have time nor budget but hurry up before you're left out at the hands of Eva Lair\'s BNB…";
String three = "You have a $900 budget to find a place. Do you your best not to starve!\nPress enter to continue.";
String four = "OK, so where do you want to start looking?\nPress B for Brooklyn, Q for Queens and M for Manhattan";
String b11 = "Press 1 if you want a flat for yourself\nOr 2 if you don't mind sharing a place";
String b2 = "You'd love to live along the L train, right? Press 1 if so\nOr 2, if Far Rockaway doesn't sound too exotic…";
String b31 = "YOU STARVED :(\n===GAME OVER==="; 
String b32 = "LOL so you don't mind fishing for eating. Good plan!\n===END OF GAME===";
String b41 = "Smart economics. With how many people? Choose 5 or 2 on your keyboard";
String b51 = "YES YOU DO CAN AFFORD THAT! You got yourself a room in Jamaica and $" + budget + " a month you can invest in sanitizing the place from bedbugs!\n===END OF GAME===";
String b42 = "Press 1 if you want a common area or 2 if you can live without one";
String b52 = "Super smart decision\n You can wisely use those $" + budget +" left to sanitize the whole place from bedbugs :D!\n===END OF GAME===";
String m1 = "So, cosmopolitan one huh? Press 1 for a flat or 2 for a basement";
String m21 = "ROFL. Seriously now, press Enter to start again";
String m22 = "Can you live only 4 days a week and not be there during work hours? Press Y for \'Yes\'";
String m23 = "I though so…Better go back to the beginning. Press Enter";
String m3 = "Great, you're living the dream! Manhattan, just you and the rats. And luckily the Obamacare bill passed a few years back, so you'll hopefully survive the diseases! Treat yourself — post about this achievement on Facebook :D\n===END OF GAME==="; 
String q1= "In queens you can choose 1) to live in a family house, or 2) to share a flat. What will it be?";
String q21 = "I was lying. No, not even here.\nStart again by pressing enter.";
String q22 = "WISE DECISION! You'll have a blast with your remaining $" +  budget;
PImage logo;
char keyLog = ENTER;

void setup() {
  size(523, 290);
  budget = 0;
  logo = loadImage("flathunt.jpg");
  image(logo, 0, 0, width, height);
}

void draw() {
}

void keyPressed() {
  if (key == keyLog(ENTER) && step == 0) { 
    printWord(one, "next", 0); 
  }
  if(key == keyLog(ENTER) && step == 1) {
    printWord(two, "next", 0);
  }
  if (key == keyLog(ENTER) && step == 2) {
    printWord(three, "next", 0);
  }
  if (key == keyLog('j') && step == 2) {
    printWord(jersey, "start", 0);
  }
  
  
}

void printWord(String question, String where, int cost) {
  println(question);
  if (where == "next") {
    step += 1;
  } else if (where == "start") {
    step = 3;
  }
  budget = budget - cost;
}