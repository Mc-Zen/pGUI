import pGUI.core.*;
import pGUI.classes.*;

Button b;
Button b2; 
Button b3;
Label l;
Frame Frame;
HFlowContainer buttonContainer;
HScrollContainer HSC;
VScrollContainer VSC;

Button bb1;
Button bb2;
Button bb3;


MultilineTextbox mtb;

void setup() {
  size(300, 500);
  Frame = new Frame(this);
  buttonContainer = new HFlowContainer();
  HSC = new HScrollContainer();
  VSC = new VScrollContainer();
  b = new Button();
  b2 = new Button();
  b3 = new Button();
  println(color(0,0));
  l = new Label();
  bb1 = new Button();
  bb2 = new Button();
  bb3 = new Button();
  mtb = new MultilineTextbox();

  
  mtb.setSize(200,100);
  mtb.setBackgroundColor(230);
  mtb.X = 20;
  mtb.Y = 300;
  mtb.FontSize = 15;

  Frame.setSize(width, height);
  Frame.add(l);
  Frame.add(HSC);
  Frame.add(VSC);
  Frame.add(buttonContainer);
  Frame.add(mtb);
  Frame.setBackgroundColor(color(100, 100, 200));
  Frame.Name = "FRAME";
  Frame.addKeyEventListener();

  buttonContainer.setSize(300, 60);
  buttonContainer.X = 20;
  buttonContainer.Y = 100;
  buttonContainer.setBackgroundColor(color(0, 30));
  buttonContainer.add(b);
  buttonContainer.add(b2);
  buttonContainer.add(b3);
  buttonContainer.Name = "BTNCONT";
  buttonContainer.Name = "buttonContainer";

  HSC.X = 10;
  HSC.Y = 10;
  HSC.BackgroundColor = color(255, 255, 0);
  HSC.setSize(150, 60);
  HSC.add(bb3);
  HSC.add(bb1);
  HSC.add(bb2);
  HSC.addMouseListener("");
  HSC.addMouseWheelListener();
  VSC.addMouseWheelListener();

  VSC.X = 100;
  VSC.Y = 200;
  VSC.setSize(100, 50);
  VSC.add(bb3);
  VSC.add(bb1);
  VSC.add(bb2);
  VSC.addMouseListener("");


  bb1.setText("bbb1");
  bb1.addMouseListener("asd1");
  bb1.margin(10);
  bb1.setBackgroundColor(color(230, 200, 200));
  bb1.setBackgroundColor(color(40));
  bb1.ForegroundColor = 255;

  bb2.setText("bbb2");
  bb2.addMouseListener("asd2");
  bb2.margin(10);
  bb2.Enabled = false;

  bb3.setText("bbb3");
  bb3.addMouseListener("asd3");
  bb3.margin(10);

  b.Text = "hjhhdfgd";
  b.addMouseListener("onBtn1Click");

  b2.Text = "asdasd";
  b2.margin(10);
  b2.addMouseListener("btn2Pressed");
  b2.X = 50;
  b2.Y = 20;
  b2.Width = 100;

  b3.Text = "button3";
  b3.X = 400;
  b3.addMouseListener("btn2Pressed");
  b3.Name ="BUTTON3333";

  l.setText("label");
  l.setFontSize(20);
  l.ForegroundColor = 50;
  l.setBackgroundColor(color(0, 0));
  l.X = 20;
  l.Y = 200;
  l.MarginBottom = 3;


  Frame.setParentFrame();
  Frame.registerShortcut(sc, "asd", this);
  Frame.registerShortcut(new Shortcut('B', CONTROL), "asd", this);
}

Shortcut sc = new Shortcut('A', CONTROL, SHIFT);

void asd() {
  println(123123);
}


void draw() {
}

void onBtn1Click() {
  println("surprise1");
}

void btn2Pressed() {
  println("surprise2");
}


void asd1() {
  println("b1");
} 
void asd2() {
  println("b2");
} 
void asd3() {
  println("b3");
} 
