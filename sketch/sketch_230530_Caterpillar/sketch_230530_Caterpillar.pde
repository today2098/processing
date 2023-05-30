size(1600,600);
background(200);

for(int i=1400;i>=200;i-=50){
    int idx=i/50-4;

    // 毛虫の胴体．
    noStroke();
    fill(50+6*idx,100+2*idx,50+idx);
    ellipse(i,300,100,200);

    // 毛虫の毛．
    stroke(50+6*idx,100+2*idx,50+idx);
    if(i==1400 || i==200){}
    else{
        if(boolean(idx%2)){
            line(i-10,150,i,200);
            line(i+10,450,i,400);
        }else{
            line(i+10,150,i,200);
            line(i-10,450,i,400);
        }
    }
}

// 毛虫の目．
fill(255);
ellipse(180,260,40,40);
ellipse(180,340,40,40);
fill(17);
ellipse(174,264,20,20);
ellipse(174,336,20,20);

save("image.png");
