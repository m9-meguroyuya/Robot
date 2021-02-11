float baseH = 70;
float baseW = 40;
float armL0 = 30;
float armL1 = 40;
float armL2 = 40;
float armL3 = 30;
float armL4 = 10;
float armW0 = 25;
float armW1 = 20;
float armW2 = 10;
float armW3 = 5;
float armW4 = 2.5;
float armT1 = 10;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = 0;
float l0 = 0;
float l1 = 0;
float l3 = 0;
float dif = 0.25;
float dif4 = 2.0;


void setup(){
  frameRate(60);
  size(1200, 800, P3D);
  //background(255);
  
  camera(-130, 130, 130, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'w'){
      l0 = l0 + dif;
    }
    if(key == 'W'){
      l0 = l0 - dif;
    }
    if(key == 'h'){
      l1 = l1 + dif;
    }
    if(key == 'H'){
      l1 = l1 - dif;
    }
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'e'){
      angle2 = angle2 + dif;
    }
    if(key == 'E'){
      angle2 = angle2 - dif;
    }
    if(key == 'l'){
      l3 = l3 + dif;
    }
    if(key == 'L'){
      l3 = l3 - dif;
    }
    if(key == 'i'){
      angle3 = angle3 + dif;
    }
    if(key == 'I'){
      angle3 = angle3 - dif;
    }    
    if(key == 'j'){
      angle4 = angle4 + dif4;
    }
    if(key == 'J'){
      angle4 = angle4 - dif4;
    }
    if(key == 'k'){
      angle5 = angle5 + dif;
    }
    if(key == 'K'){
      angle5 = angle5 - dif;
    }
  }
        
  pushMatrix();
  //base
  rotateZ(radians(angle0));
  fill(130);
  box(baseW,baseW,baseH);
  
  //1st link
  translate(baseW/2+armL0/2,0,l1);
  fill(110);
  box(armL0,armW0,armW0);
  rotateX(radians(angle1));
  
  //2nd link
  translate(l0,armL1/2,0);
  fill(90);
  box(armT1,armL1,armW1);
  
  //3rd link
  translate(0,armL1/2-armL2/5,0);
  rotateX(radians(angle2));
  translate(-armT1/2-armW2/2,armL1-2*armW2,0);
  fill(70);
  box(armW2,armL2,armW2);
  
  //4th link
  translate(0, armL2/2, 0);
  translate(0, l3, 0);
  fill(50);
  box(armW3,armL3,armW3); 
  
  //5th link
  translate(0, armL3/2, 0);
  rotateZ(radians(angle5)); 
  translate(0, 0, 0);
  rotateX(radians(angle3)); 
  translate(0, 0, 0);
  rotateY(radians(angle4));
  translate(0, armL4/2, 0);
  fill(0);
  box(armW4,armL4,armW4);
  popMatrix();


  pushMatrix();
  //base'
  rotateZ(radians(angle0));
  fill(130);
  box(baseW,baseW,baseH);
  
  //1st link'
  translate(-baseW/2-armL0/2,0,l1);
  fill(110);
  box(armL0,armW0,armW0);
  rotateX(radians(angle1));
  
  //2nd link'
  translate(-l0,armL1/2,0);
  fill(90);
  box(armT1,armL1,armW1);
  
  //3rd link'
  translate(0,armL1/2-armL2/5,0);
  rotateX(radians(angle2));
  translate(armT1/2+armW2/2,armL1-2*armW2,0);
  fill(70);
  box(armW2,armL2,armW2);
  
  //4th link'
  translate(0, armL2/2, 0);
  translate(0, l3, 0);
  fill(50);
  box(armW3,armL3,armW3); 
  
  //5th link'
  translate(0, armL3/2, 0);
  rotateZ(radians(angle5)); 
  translate(0, 0, 0);
  rotateX(radians(angle3)); 
  translate(0, 0, 0);
  rotateY(radians(angle4));
  translate(0, armL4/2, 0);
  fill(0);
  box(armW4,armL4,armW4);
  popMatrix();

}
