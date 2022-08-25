class Shop {
  int prisAC1,prisAC2,prisAC3,prisCPC1,prisCPC2,prisCPC3;
  int AC1,AC2,AC3;
  int timer;
  int clicker;

  
  Shop() {
  prisAC1 = 100;
  AC1 = 0;
  prisAC2 = 1000;
  AC2 = 0;
  prisAC3 = 10000;
  AC3 = 0;
  
  prisCPC1 = 500;
  prisCPC2 = 5000;
  prisCPC3 = 50000;
  
  clicker = 1;
  }
  
  void Auto() {
    if (millis() - timer >= 1000) {
    if(prisAC1 > prisAC1 - 50 || prisAC1 > 100){
    score = score + AC1;
    }
    if(prisAC2 > prisAC2 - 500 || prisAC2 > 1000) {
    score = score + AC2;
  }
    if(prisAC3 > prisAC3 - 5000 || prisAC3 > 10000) {
    score = score + AC3;
  }
    timer = millis();
  }
    }
  
  void ShopIcon() {
    textSize(40);
    noFill();
    text("Shop", width-110,50);
    rect(width-120,10,110,50);
  }
  
  void BackIcon() {
    textSize(40);
    noFill();
    text("Back", 20,50);
    rect(10,10,110,50);
  }
  
  void UpgradeIcon() {
    textSize(40);
    noFill();
    text("AutoClick 1: " + prisAC1, 20,height/2 + 40);
    rect(10,height/2,width-20,50);
    
    textSize(40);
    noFill();
    text("AutoClick 2: " + prisAC2, 20,height/2 + 90);
    rect(10,height/2 + 50,width-20,50);
    
    textSize(40);
    noFill();
    text("AutoClick 3: " + prisAC3, 20,height/2 + 140);
    rect(10,height/2 + 100,width-20,50);
    
    
    textSize(40);
    noFill();
    text("Cookies per click 1: " + prisCPC1, 20,height/2 + 190);
    rect(10,height/2 + 150,width-20,50);
    
    textSize(40);
    noFill();
    text("Cookies per click 2: " + prisCPC2, 20,height/2 + 240);
    rect(10,height/2 + 200,width-20,50);
    
    textSize(40);
    noFill();
    text("Cookies per click 3: " + prisCPC3, 20,height/2 + 290);
    rect(10,height/2 + 250,width-20,50);
  }

}
