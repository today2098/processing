void setup(){
    size(1600,600);
    background(200);
}

void draw(){
    background(200);

    int W=height/3;  // 毛虫の胴の横幅．200.
    int H=W/2;  // 毛虫の胴の縦幅．100.

    int x_head=2*H, x_tail=14*H;

    float arg2=(float)frameCount/4;
    float diff2=10*sin(arg2);  // 毛について．

    for(int x=x_tail;x>=x_head;x-=H/2){
        int idx=x/(H/2)-x_head/(H/2);

        float arg=(float)frameCount/12-(float)idx/2;
        float diff=15*sin(arg);  // 胴について．

        // 毛虫の胴体．
        noStroke();
        fill(50+6*idx,100+2*idx,50+idx);
        ellipse(x,height/2+diff,H,W);

        // 毛虫の毛．
        if(x==x_head || x==x_tail){}
        else{
            int ly=height/2+W/2;
            int ry=height/2-W/2;
            stroke(100);
            if(boolean(idx%2)){
                line(x-diff2,ry-50+diff,x,ry+diff);
                line(x+diff2,ly+50+diff,x,ly+diff);
            }else{
                line(x+diff2,ry-50+diff,x,ry+diff);
                line(x-diff2,ly+50+diff,x,ly+diff);
            }
        }
        
        // 毛虫の目．
        if(x==x_head){
            fill(255);
            ellipse(x_head-20,height/2-40+diff,40,40);
            ellipse(x_head-20,height/2+40+diff,40,40);
            fill(17);
            ellipse(x_head-26,height/2-36+diff,20,20);
            ellipse(x_head-26,height/2+36+diff,20,20);
        }
    }

    if(frameCount<=600){
        saveFrame("frames/frame-####.tif");
    }
}
