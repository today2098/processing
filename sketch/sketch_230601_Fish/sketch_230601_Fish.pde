int x,y;
int vx;

void setup(){
    size(1200,900);
    x=600;
    y=450;
    vx=5;
}

void draw(){
    background(209,227,245);

    for(int i=-1;i<=1;++i){
        for(int j=-1;j<=1;++j){
            drawFish(x+500*i,y+300*j,i+j);
        }
    }

    x+=vx;
    if(x>width+800) x=-800;
}

float f(float a,float b,float x){
    return sqrt((1.0-x*x/a/a)*b*b);
}

//さかな．
void drawFish(int x,int y,int c){
    int a=200, b=100;

    // 背びれ．
    fill(204);
    triangle(x,y-f(a,b,0),x-70,y-130,x-170,y-f(a,b,-170));
    triangle(x-50,y+f(a,b,-50),x-100,y+110,x-150,y+f(a,b,-150));

    // 尾びれ．
    quad(x-250,y-70,x-250,y+70,x-180,y+f(a,b,-180),x-180,y-f(a,b,-180));
    float d1=140.0/5, d2=2*f(a,b,-180)/5;
    for(int i=1;i<=4;++i) line(x-250,y-70+d1*i,x-180,y-f(a,b,-180)+d2*i);

    
    // 胴体．
    fill(113+20*c,170+20*c,226+20*c);
    ellipse(x,y,2*a,2*b);

    // 胸びれ．
    fill(204);
    quad(x+50,y-10,x+50,y+50,x+100,y+30,x+100,y+5);
    float d3=60.0/5, d4=25.0/5;
    for(int i=1;i<=4;++i) line(x+50,y-10+d3*i,x+100,y+5+d4*i);

    // 白目．
    fill(255);
    ellipse(x+150,y-20,50,50);

    // 黒目．
    fill(0);
    ellipse(x+160,y-20,20,20);
}
