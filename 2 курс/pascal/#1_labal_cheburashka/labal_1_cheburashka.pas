﻿Program Cheburashka;
uses GraphABC;
begin

  // HEAD
  var head_x, head_y: integer;
  head_x := 320;
  head_y := 160;
  Circle(320,160,50);
  FloodFill(320, 160, clKhaki);
    
  // EYE (Глаз Л)
  var eye_L_x, eye_L_y: integer;
  eye_L_x := 300;
  eye_L_y := 150;
  Circle(eye_L_x, eye_L_y, 7);
  FloodFill(eye_L_x, eye_L_y, clBlue);
  
  // EYE (Глаз П)  
  var eye_R_x, eye_R_y: integer;
  eye_R_x := 340;
  eye_R_y := 150;
  Circle(eye_R_x,eye_R_y, 7);
  FloodFill(eye_R_x,eye_R_y, clBlue);
  
  // Nose
  var nose_x1, nose_x2, nose_y1, nose_y2: integer;
  nose_x1 := 317;
  nose_x2 := 325;
  nose_y1 := 160;
  nose_y2 := 180;
  Ellipse(nose_x1, nose_y1, nose_x2, nose_y2);
  FloodFill(320, 170, clYellow);
  
  // Mouth
  var mouth_x1, mouth_x2, mouth_y1, mouth_y2: integer;
  mouth_x1 := 310;
  mouth_x2 := 332;
  mouth_y1 := 190;
  mouth_y2 := 190;
  Line(mouth_x1, mouth_y1, mouth_x2, mouth_y2);
    
  // EAR_L (Ухо Л)  
  var ear_L_x1, ear_L_x2, ear_L_y1, ear_L_y2: integer;
  ear_L_x1 := 200;
  ear_L_x2 := 272;
  ear_L_y1 := 90;
  ear_L_y2 := 220;
  Ellipse(ear_L_x1, ear_L_y1, ear_L_x2, ear_L_y2);
  FloodFill(250, 100, clBrown);
  
  // EAR_R (Ухо П)  
  var ear_R_x1, ear_R_x2, ear_R_y1, ear_R_y2: integer;
  ear_R_x1 := 370;
  ear_R_x2 := 442;
  ear_R_y1 := 90;
  ear_R_y2 := 220;
  Ellipse(ear_R_x1, ear_R_y1, ear_R_x2, ear_R_y2);
  FloodFill(390, 110, clBrown);
  
  // Body (Тело)  
  var body_x1, body_x2, body_y1, body_y2: integer;
  body_x1 := 280;
  body_x2 := 365;
  body_y1 := 210;
  body_y2 := 360;
  Ellipse(body_x1, body_y1, body_x2, body_y2);
  FloodFill(300, 300, clBrown);
  
  // Arm_L (Рука Л)  
  var arm_L_x1, arm_L_x2, arm_L_y1, arm_L_y2: integer;
  arm_L_x1 := 230;
  arm_L_x2 := 282;
  arm_L_y1 := 260;
  arm_L_y2 := 270;
  Ellipse(arm_L_x1, arm_L_y1, arm_L_x2, arm_L_y2);
  FloodFill(240, 265, clBrown);
  
  // Arm_R (Рука П)  
  var arm_R_x1, arm_R_x2, arm_R_y1, arm_R_y2: integer;
  arm_R_x1 := 363;
  arm_R_x2 := 415;
  arm_R_y1 := 260;
  arm_R_y2 := 270;
  Ellipse(arm_R_x1, arm_R_y1, arm_R_x2, arm_R_y2);
  FloodFill(370, 265, clBrown);
  
  // Foot_L (Нога Л)  
  var foot_L_x1, foot_L_x2, foot_L_y1, foot_L_y2: integer;
  foot_L_x1 := 258;
  foot_L_x2 := 306;
  foot_L_y1 := 345;
  foot_L_y2 := 365; 
  Ellipse(foot_L_x1, foot_L_y1, foot_L_x2, foot_L_y2);
  FloodFill(270, 350, clBrown);
  
  // Foot_L (Нога П)  
  var foot_R_x1, foot_R_x2, foot_R_y1, foot_R_y2: integer;
  foot_R_x1 := 340;
  foot_R_x2 := 388;
  foot_R_y1 := 345;
  foot_R_y2 := 365; 
  Ellipse(foot_R_x1, foot_R_y1, foot_R_x2, foot_R_y2);
  FloodFill(350, 350, clBrown);
  
end.
