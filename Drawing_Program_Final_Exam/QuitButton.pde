/* Example Subprogram
 Purpose: to code entire object in one place
 Reason: makes code for this object easier to read, reference, and change
 Reminder: each function must be referenced in the main program
 */

//Global Variables
String quitButton = "X";
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, red=#FF0303, black=#000000;
int reset=1;

void quitButtonSetup()
{
  quitButtonX = displayWidth*18/20;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*2/20;
  quitButtonHeight = displayHeight*1/20;
}//End quitButtonSetup()

void quitButtonDraw()
{
  //Quit Button Hover Over
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hover Over
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  textCode(quitButton, 25, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}//End quitButtonDraw()

void quitButtonMousePressed()
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End quitBuittonMousePressed()
