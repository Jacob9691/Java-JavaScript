int stage = 1;
float cookieX;
float cookieY;
int score;

Shop shop = new Shop();
   
void setup(){
  size(900, 900);
  score = 0;
  cookieX = width/2 - 200;
  cookieY = height/2 - 200;
  
  shop = new Shop();
  
}

void draw() {
  
  if(stage == 1) {
  background(255);
  fill(100);
  ellipse(cookieX+200, cookieY+200, 400, 400);
  textSize(50);
  text("Cookies: " + score, 10, 50);
  shop.ShopIcon();
  shop.Auto();
  
  }
  
  if(stage == 2) {
  background(255);
  text("Cookies: " + score, width/2 - 100, 50);
  textSize(100);
  text("Cookie Shop", 150, height/2-150);
  shop.BackIcon();
  shop.UpgradeIcon();
  shop.Auto();
  }
}

void mouseClicked() {
  if(stage == 1 && mouseX > cookieX && mouseX < cookieX + 400 && mouseY > cookieY && mouseY < cookieY + 400){
    score = score + shop.clicker;
  }
  
  if(stage == 1 && mouseX > width-120 && mouseX < width-120 + 110 && mouseY > 10 && mouseY < 10 + 50){
    stage = 2;
  }
  
  if(stage == 2 && mouseX > 10 && mouseX < 10 + 110 && mouseY > 10 && mouseY < 10 + 50){
    stage = 1;
  }
  
  if(stage == 2 && mouseX > 10 && mouseX < 10 + width && mouseY > height/2 && mouseY < height/2 + 50){
    if(score > shop.prisAC1 || score == shop.prisAC1) {
    score = score - shop.prisAC1;
    shop.prisAC1 += 50;
    shop.AC1 += 1;
    }
  }
  
  if(stage == 2 && mouseX > 10 && mouseX < 10 + width && mouseY > height/2 + 50 && mouseY < height/2 + 100){
    if(score > shop.prisAC2 || score == shop.prisAC2) {
    score = score - shop.prisAC2;
    shop.prisAC2 += 500;
    shop.AC2 += 10;
    }
  }
  
  if(stage == 2 && mouseX > 10 && mouseX < 10 + width && mouseY > height/2 + 100 && mouseY < height/2 + 150){
    if(score > shop.prisAC3 || score == shop.prisAC3) {
    score = score - shop.prisAC3;
    shop.prisAC3 += 5000;
    shop.AC3 += 100;
    }  
  }
  
  if(stage == 2 && mouseX > 10 && mouseX < 10 + width && mouseY > height/2 + 150 && mouseY < height/2 + 200){
    if(score > shop.prisCPC1 || score == shop.prisCPC1) {
    score = score - shop.prisCPC1;
    shop.prisCPC1 += 500;
    shop.clicker = shop.clicker + 1;
    }  
  }
  
  if(stage == 2 && mouseX > 10 && mouseX < 10 + width && mouseY > height/2 + 200 && mouseY < height/2 + 250){
    if(score > shop.prisCPC2 || score == shop.prisCPC2) {
    score = score - shop.prisCPC2;
    shop.prisCPC2 += 5000;
    shop.clicker = shop.clicker + 10;
    }  
  }
  
  if(stage == 2 && mouseX > 10 && mouseX < 10 + width && mouseY > height/2 + 250 && mouseY < height/2 + 300){
    if(score > shop.prisCPC3 || score == shop.prisCPC3 ) {
    score = score - shop.prisCPC3;
    shop.prisCPC3 += 50000;
    shop.clicker = shop.clicker + 100;
    }  
  }
}
