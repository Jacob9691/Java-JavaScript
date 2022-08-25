class Player {
  //Her definerer vi cirklerne som man skal klikke på, og en y-værdi for cirklerne, når de skal videre til næste række.
  int Cirkel1, Cirkel2, Cirkel3, Cirkel4;
  int yTaeller;
  
  Player() {
    //Her fortæller vi programmet hvad deres værdier er.
    yTaeller = 575;
    
    Cirkel1 = 0;
    Cirkel2 = 0;
    Cirkel3 = 0;
    Cirkel4 = 0;
    
  }
  
  //Under farveOption, fortæller vi hvad der skal tegnes, når cirklerne har en bestemt værdi. Vi gør også at når værdien bliver 5, så vil den gå ned til 1 igen.
  void farveOption() {
    if(Cirkel1 == 1) {
      fill(255,0,0);
      circle(80,yTaeller,40);
    }else if(Cirkel1 == 2){
      fill(0,255,0);
      circle(80,yTaeller,40);
    }else if(Cirkel1 == 3){
      fill(0,0,255);
      circle(80,yTaeller,40);
    }else if(Cirkel1 == 4){
      fill(255,255,0);
      circle(80,yTaeller,40); 
    } 
    if(Cirkel1 == 5) {
      Cirkel1 = 1;
    }
    
    if(Cirkel2 == 1) {
      fill(255,0,0);
      circle(125,yTaeller,40);
    }else if(Cirkel2 == 2){
      fill(0,255,0);
      circle(125,yTaeller,40);
    }else if(Cirkel2 == 3){
      fill(0,0,255);
      circle(125,yTaeller,40);
    }else if(Cirkel2 == 4){
      fill(255,255,0);
      circle(125,yTaeller,40); 
    } 
    if(Cirkel2 == 5) {
      Cirkel2 = 1;
    }
    
    if(Cirkel3 == 1) {
      fill(255,0,0);
      circle(170,yTaeller,40);
    }else if(Cirkel3 == 2){
      fill(0,255,0);
      circle(170,yTaeller,40);
    }else if(Cirkel3 == 3){
      fill(0,0,255);
      circle(170,yTaeller,40);
    }else if(Cirkel3 == 4){
      fill(255,255,0);
      circle(170,yTaeller,40); 
    } 
    if(Cirkel3 == 5) {
      Cirkel3 = 1;
    }
    
    if(Cirkel4 == 1) {
      fill(255,0,0);
      circle(215,yTaeller,40);
    }else if(Cirkel4 == 2){
      fill(0,255,0);
      circle(215,yTaeller,40);
    }else if(Cirkel4 == 3){
      fill(0,0,255);
      circle(215,yTaeller,40);
    }else if(Cirkel4 == 4){
      fill(255,255,0);
      circle(215,yTaeller,40); 
    } 
    if(Cirkel4 == 5) {
      Cirkel4 = 1;
    }
  }
}
