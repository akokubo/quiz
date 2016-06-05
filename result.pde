void result() {
  background(204); // 背景色
  fill(0); // 塗り(文字)の色
  textAlign(CENTER, CENTER); // 文字列を上下左右中央揃え

  textFont(font36);
  text("正解数:" + score, 40, 40, 240, 80);

  textFont(font18);
  text("マウスをクリックして再挑戦", 40, 140, 240, 40);
  text("xキーを押して終了", 40, 220, 240, 40);

  if (mousePressed == true) {
    // マウスをクリックしたら
    scene = 0; // 開始画面へ移動
  } else if (keyPressed == true && key == 'x') {
    exit();
  }
}