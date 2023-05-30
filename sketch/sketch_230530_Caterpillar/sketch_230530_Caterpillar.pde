size(800,300);
background(200);

for(int i=700;i>=100;i-=25){
    int idx=i/25-4;

    // 毛虫の胴体．
    noStroke();
    fill(50+6*idx,100+2*idx,50+idx);
    ellipse(i,150,50,100);

    // 毛虫の毛．
    stroke(50+6*idx,100+2*idx,50+idx);
    if(i==700 || i==100){}
    else{
        if(boolean(idx%2)){
            line(i-5,75,i,100);
            line(i+5,225,i,200);
        }else{
            line(i+5,75,i,100);
            line(i-5,225,i,200);
        }
    }
}

// 毛虫の目．
fill(255);
ellipse(90,130,20,20);
ellipse(90,170,20,20);
fill(17);
ellipse(87,132,10,10);
ellipse(87,168,10,10);

save("image.png");
