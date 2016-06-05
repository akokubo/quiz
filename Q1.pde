void Q1() {
  background(204); // 背景色
  fill(0); // 塗り(文字)の色
  textAlign(CENTER, CENTER); // 文字列を中央揃え

  textFont(font18);
  text("クイズ1", 40, 40, 240, 80);
  text("キーを押して結果画面へ", 40, 240, 240, 40);

  if (keyPressed == true) {
    // キーを押したら
    scene = 2; // 結果画面へ移動
  }
}