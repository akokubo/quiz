void Q1() {
  background(204); // 背景色
  fill(0); // 塗り(文字)の色
  textAlign(CENTER, CENTER); // 文字列を中央揃え

  textFont(font18);
  text("じゃんけんでグーに勝つのは？", 40, 40, 240, 80);

  text("1: グー", 80, 120, 160, 40);
  text("2: チョキ", 80, 180, 160, 40);
  text("3: パー", 80, 240, 160, 40);

  if (keyPressed == true) {
    // キーを押したら
    scene = 2; // 結果画面へ移動
  }
}