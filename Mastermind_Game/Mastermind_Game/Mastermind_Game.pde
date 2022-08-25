//Her definerer vi klasserne.
Draw game = new Draw();
Player play = new Player();
Tjekker tjek = new Tjekker();

//Her definerer vi svarene og stage som int.
int Svar1, Svar2, Svar3, Svar4;
int Stage;

void setup() {
  //Her opsætter vi størrelsen og farven af skærmen.
  size(300,600);
  background(255);
  
  Stage = 1;
  
  if(Stage == 1) {
  //Her opskriver man de forskellige svar, hvor de får en tilfældig værdi.
  Svar1 = int(random(1,4));
  Svar2 = int(random(1,4));
  Svar3 = int(random(1,4));
  Svar4 = int(random(1,4));
  
  //Her definerer vi klasserne i setup.
  game = new Draw();
  play = new Player();
  tjek = new Tjekker();
  
  //Her tegner vi bane op for spillet, i setup.
  game.layout();
  
  //Dette bliver brugt som test, for at nemt vide hvad svaret er.
  print(Svar1);
  print(Svar2);
  print(Svar3);
  print(Svar4);
  }
}

void draw() {
  //Her opsætte vi hvad der skal ske i stage 1, når den er under draw, her tjekker den for farverne, når man klikker, og den tegner tjek knappen.
  if(Stage == 1) {
  play.farveOption();
  tjek.tjekDraw();
  
  }
  
  //Her opsætter vi hvad der skal ske i stage 2, som er når man vinder spillet.
  if(Stage == 2) {
    background(255);
    fill(0);
    textSize(50);
    text("Du vandt", 40, 300);
  }
  
  //Her opsætter vi hvad der skal ske i stage 3, som er når man taber spillet.
  if(Stage == 3) {
    background(255);
    fill(0);
    textSize(50);
    text("Du tabte", 40, 300);
  }
}

//Her laver vi et andet void, hvor vi definerer hvad der skal ske, når man klikker på visse ting i spillet.
void mouseClicked() {
  //Her lægger den en værdi til cirklerne, når man klikker på dem. Dette får dem til at skifte farve.
  if(Stage == 1 && mouseX > 60 && mouseX < 60 + 40 && mouseY > play.yTaeller && mouseY < play.yTaeller + 40) {
    play.Cirkel1 +=1;
  }
  
  if(Stage == 1 && mouseX > 105 && mouseX < 105 + 40 && mouseY > play.yTaeller && mouseY < play.yTaeller + 40) {
    play.Cirkel2 +=1;
  }
  
  if(Stage == 1 && mouseX > 150 && mouseX < 150 + 40 && mouseY > play.yTaeller && mouseY < play.yTaeller + 40) {
    play.Cirkel3 +=1;
  }
  
  if(Stage == 1 && mouseX > 195 && mouseX < 195 + 40 && mouseY > play.yTaeller && mouseY < play.yTaeller + 40) {
    play.Cirkel4 +=1;
  }
  
  //Her definerer programmet hvad der vil ske når man klikker på tjek knappen.
  if(Stage == 1 && mouseX > 240 && mouseX < 240 + 55 && mouseY > 555 && mouseY < 555 + 35) {
    tjek.tjekKontrol();
    tjek.tjekSvar();
  }
}
