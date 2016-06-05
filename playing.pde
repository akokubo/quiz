void playing() {
  background(204); // 背景色
  fill(0); // 塗り(文字)の色
  textAlign(CENTER, CENTER); // 文字列を上下左右中央揃え

  textFont(font36);
  text("プレイ画面", 40, 40, 240, 80);

  textFont(font18);
  text("キーを押して結果画面へ", 40, 240, 240, 40);

  if (keyPressed == true) {
    // マウスをクリックしたら
    scene = 2; // 結果画面へ移動
  }
}