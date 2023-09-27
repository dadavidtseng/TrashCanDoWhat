PImage main, trashcan, trashdata;
PShape trash, typeX;

import processing.pdf.*;

void setup(){
  
  size(594, 841);

  main = loadImage("typeC.jpg");
  trashcan = loadImage("trashcan.jpg");
  trashdata = loadImage("trashdata.jpg");
  
  trash = loadShape("trash.svg");
  trash.scale(0.06);
  typeX = loadShape("typeX.svg");
  typeX.scale(0.06); 

  beginRecord(PDF, "YuWei_Tseng_FinalProjectPoster_TrashCanDoWhat.pdf");
  background(0);  
}

void draw(){
  
  imageMode(CENTER);
  image(main, 594/2, 841/1.35, height/1.48, width/1.48);
  image(trashcan, 90, 240, trashcan.width/70, trashcan.height/70);
  image(trashdata, 220, 240, trashdata.width/3.33, trashdata.height/3.33);
  
  rectMode(CORNER);
  noFill();
  stroke(200);
  rect(275, 90, trashcan.width/70, trashcan.height/70);
  rect(430, 90, trashcan.width/70, trashcan.height/70);
  
  shape(trash, 275, 80);
  shape(typeX, 430, 80);
  
  fill(200);
  textSize(40);
  text("Trash Can Do What", 10, 50);  
  textSize(15);
  text("Data collection of a bag of trash", 15, 410);
  text("Converting trash images into shapes", 275, 410);
  text("Decreasing = sinking", 433, 105);
  text("Increasing = throwing", 433, 120);
  text("A bag of trash by Yu-Wei, Tseng", 15, 70);
  
  fill(0);
  textSize(15);  
  text("The trace of trash(Macro)", 15, 815);
  text("The trend of trash(micro)", 275, 815);
  text("trash type", 470, 815);
  
  save("YuWei_Tseng_FinalProjectPoster_TrashCanDoWhat.jpg");
  
  endRecord();  
}
