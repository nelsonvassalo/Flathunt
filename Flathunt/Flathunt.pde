int budget, cost, step;
String currentHood = "";
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
String b53 = "Be honest. You can't actually live like a rat…\n===Press Enter to RESTART SEARCH===";
String m1 = "So, cosmopolitan one huh? Press 1 for a flat or 2 for a basement";
String m21 = "ROFL. Seriously now, press Enter to start again";
String m22 = "Can you live only 4 days a week and not be there during work hours? Press Y for \'Yes\' Or N for \'No\'.";
String m23 = "I though so…Better go back to the beginning. Press Enter";
String m3 = "Great, you're living the dream! Manhattan, just you and the rats. And luckily the Obamacare bill passed a few years back, so you'll hopefully survive the diseases! Treat yourself — post about this achievement on Facebook :D\n===END OF GAME==="; 
String q1= "In queens you can choose 1) to live in a family house, or 2) to share a flat. What will it be?";
String q21 = "I was lying. No, not even here.\nStart again by pressing enter.";
String q22 = "WISE DECISION! You'll have a blast with your remaining $" +  budget + "\n==END OF GAME===";
PImage logo;
char keyLog = ENTER;

void setup() {
  size(523, 290);
  budget = 900;
  logo = loadImage("flathunt.jpg");
  image(logo, 0, 0, width, height);
}

void draw() {
}

void keyPressed() {
  println(step+1);
  if (key == ENTER && step == 0) { 
    printWord(one, "next", 0); 
  }
  else if(key == ENTER && step == 1) {
    printWord(two, "next", 0);
  }
  else if (key == ENTER && step == 2) {
    printWord(three, "next", 0);
  }
  else if (key == 'j' || key == 'J' && step == 2) {
    printWord(jersey, "start", 0);
  }
  else if (key == ENTER && step == 3) {
    printWord(four,"next",0);
  }
  else if (key == 'B' || key == 'b' && step == 4) {
    printWord(b11,"next",0);
    currentHood = "B";
  }
  else if(currentHood=="B" && key == '1' && step == 5) {
    printWord(b2,"next",0);
  }
  else if (currentHood=="B" && key == '2' && step == 5) {
    printWord(b41, "next", 0);
  }
  else if (currentHood=="B" && key == '1' && step == 5) {
    printWord(b31, "next", 0);
  }
  else if (currentHood=="B" && key == '2' && step == 5) {
    printWord(b32,"next",770);
  }
  else if (currentHood=="B" && key == '1' && step == 6) {
    printWord(b31, "start", 0);
  }
  else if (currentHood=="B" && key == '2' && step == 6) {
    printWord(b51, "start", 0);
  }
  else if (currentHood=="B" && key == '5' && step == 6) {
    printWord(b42,"next",0);
  }
  else if (currentHood=="B" && key =='1' && step == 7) {
    printWord(b51, "next", 0);
  }
  else if (currentHood=="B" && key == '2' && step == 7) {
    printWord(b53, "start", 600);
  }
  else if (currentHood=="B" && key == '2' && step == 8) {
    printWord(b52,"start",750);
  }
  else if (key == 'm' || key == 'M' && step == 4) {
    printWord(m1, "next", 0);
    currentHood = "M";
  }
  else if (currentHood=="M" && key == '1' && step == 5) {
    printWord(m21, "start", 0);
  }
  else if (currentHood=="M" && key == '2' && step == 5) {
    printWord(m22, "start", 0);
  }
  else if (currentHood=="M" && key == 'y' || key == 'Y' && step == 6) {
    printWord(m3,"start",0);
  }
  else if (key == 'Q' || key == 'q' && step == 4) {
    printWord(q1,"next",0);  
    currentHood = "Q";
  }
  else if (currentHood=="Q" && key == '1' && step == 5 ) {
    printWord(q21,"start",0);
  }
  else if (currentHood=="Q" && key == '2' && step == 5 ) {
    printWord(q22,"start",600);
  }
   
}

void printWord(String question, String where, int pay) {
  
  if (where == "next") {
    step += 1;
  } else if (where == "start") {
    step = 3;
  }
  cost = pay; 
  budget = (int) (budget - cost);
  println(question);
}