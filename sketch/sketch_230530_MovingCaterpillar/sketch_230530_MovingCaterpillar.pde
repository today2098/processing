void setup(){
    size(1600,600);
    background(200);
}

void draw(){
    int W=height/3;  // 毛虫の胴の横幅．200.
    int H=W/2;  // 毛虫の胴の縦幅．100.

    int x_head=2*H, x_tail=14*H;
    for(int x=x_tail;x>=x_head;x-=H/2){
        int idx=x/(H/2);

        // 毛虫の胴体．
        noStroke();
        fill(50+6*idx,100+2*idx,50+idx);
        ellipse(x,height/2,H,W);

        // 毛虫の毛．
        stroke(100);
        if(x==x_head || x==x_tail){}
        else{
            int ly=height/2+W/2;
            int ry=height/2-W/2;
            if(boolean(idx%2)){
                line(x-10,ry-50,x,ry);
                line(x+10,ly+50,x,ly);
            }else{
                line(x+10,ry-50,x,ry);
                line(x-10,ly+50,x,ly);
            }
        }
    }

    // 毛虫の目．
    fill(255);
    ellipse(x_head-20,height/2-40,40,40);
    ellipse(x_head-20,height/2+40,40,40);
    fill(17);
    ellipse(x_head-26,height/2-36,20,20);
    ellipse(x_head-26,height/2+36,20,20);
}
