void opening() {
  background(204); // 背景色
  fill(0); // 塗り(文字)の色
  textAlign(CENTER, CENTER); // 文字列を上下左右中央揃え

  textFont(font36); // 36ピクセルのフォントに
  text("3択クイズ", 40, 40, 240, 80);

  textFont(font18); // 18ピクセルのフォントに
  text("クリックして開始", 40, 240, 240, 40);

  if (mousePressed == true) {
    // マウスをクリックしたら
    scene = 1; // プレイ画面へ移動
    score = 0; // 正解数を0に
    quizNum = 1; // クイズ番号を1に
    isAnswered = false; // 未回答に
    isCorrect = false; // 誤答に
    lapseDisplayed = millis() / 1000; // 問題表示開始時間を記録
  }
}