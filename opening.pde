void opening() {
  background(204); // 背景色
  fill(0); // 塗り(文字)の色
  textAlign(CENTER, CENTER); // 文字列を上下左右中央揃え

  text("3択クイズ", 40, 40, 240, 80);
  text("クリックして開始", 40, 240, 240, 40);

  if (mousePressed == true) {
    // マウスをクリックしたら
    scene = 1; // プレイ画面へ移動
  }
}