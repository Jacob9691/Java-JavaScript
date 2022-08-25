class Tjekker {
  //Her definerer vi y-værdierne for kontrol cirklerne, når de skal bevæge sig op til næste række.
  int yKontrol1, yKontrol2;
  
  Tjekker() {
    //Her fortæller vi hvad deres værdi er.
    yKontrol1 = 565;
    yKontrol2 = 585;
  }
  
  //Her tegner vi knappen til når man vil tjekke sit svar.
  void tjekDraw() {
    fill(255);
    rect(240,555,55,35);
    fill(0);
    textSize(25);
    text("Tjek",240,580);
    fill(255);
  }
  
  //Her definerer vi hvad der vil ske når cirklerne har en hvis værdi. 
  //Hvis fx. Cirkel1 er lig med Svar1, så vil den tegne en rød kontrolcirkel, men hvis den giver en af de andre svar, så vil den tegne en hvid en.
  void tjekKontrol() {
    if(play.Cirkel1 == Svar1) {
      fill(255,0,0);
      circle(10,yKontrol1,20);
    }else if(play.Cirkel1 == Svar2 || play.Cirkel1 == Svar3 || play.Cirkel1 == Svar4) {
      fill(255);
      circle(10,yKontrol1,20);
    }
    
    if(play.Cirkel2 == Svar2) {
      fill(255,0,0);
      circle(30,yKontrol1,20);
    }else if(play.Cirkel2 == Svar1 || play.Cirkel2 == Svar3 || play.Cirkel2 == Svar4) {
      fill(255);
      circle(30,yKontrol1,20);
    }
    
    if(play.Cirkel3 == Svar3) {
      fill(255,0,0);
      circle(10,yKontrol2,20);
    }else if(play.Cirkel3 == Svar2 || play.Cirkel3 == Svar1 || play.Cirkel3 == Svar4) {
      fill(255);
      circle(10,yKontrol2,20);
    }
    
    if(play.Cirkel4 == Svar4) {
      fill(255,0,0);
      circle(30,yKontrol2,20);
    }else if(play.Cirkel4 == Svar2 || play.Cirkel4 == Svar3 || play.Cirkel4 == Svar1) {
      fill(255);
      circle(30,yKontrol2,20);
    }
  }
  
  //Her tjekker vi om svaret er rigtigt, ved at sige hvis alle cirklerne og svarene er lig med den rigtige kombination med hinanden, så går stage til 2.
  void tjekSvar() {
    if(play.Cirkel1 == Svar1 && play.Cirkel2 == Svar2 && play.Cirkel3 == Svar3 && play.Cirkel4 == Svar4) {
      Stage = 2;
    }else if(play.yTaeller == 25) { //Hvis y-værdien kommer til et hvis punkt, så har man ikke flere rækker tilbage, og man går til stage 3.
      Stage = 3;
    }else { //Her resetter vi cirkel værdierne, og gør at y-værdierne kommer op til næste række.
      play.Cirkel1 = 0;
      play.Cirkel2 = 0;
      play.Cirkel3 = 0;
      play.Cirkel4 = 0;
      
      play.yTaeller -= 50;
      yKontrol1 -= 50;
      yKontrol2 -= 50;
    }
  }
}
