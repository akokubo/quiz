void Q1() {
  char answer = '3'; // 正解

  background(204); // 背景色
  fill(0); // 塗り(文字)の色
  textAlign(CENTER, CENTER); // 文字列を中央揃え

  textFont(font18);
  text("じゃんけんでグーに勝つのは？", 40, 40, 240, 80);

  text("1: グー", 80, 120, 160, 40);
  text("2: チョキ", 80, 180, 160, 40);
  text("3: パー", 80, 240, 160, 40);

  if (isAnswered == false && keyPressed == true) {
    // 未回答時にキーを押したら
    isAnswered = true; // 回答した
    lapseAnswered = millis() / 1000; // 回答時経過時間を記録
    if (key == answer) {
      // 正解だったら
      score++; // 正解数を増やす
      isCorrect = true; // 正解した
    } else {
      isCorrect = false; // 間違えた
    }
  } else if (isAnswered == true) {
    // 回答したら
    if (millis() / 1000 - lapseAnswered > 2) {
      // 回答して2秒経過したら
      scene = 2; // 結果画面へ移動
    } else {
      // 正誤を表示
      noFill(); // 塗りつぶさない
      stroke(255, 0, 0); // 線を赤で
      strokeWeight(10); // 線の太さを10に

      if (isCorrect == true) {
        // マルの表示
        ellipse(width / 2, height / 2, 0.8 * width, 0.8 * height);
      } else {
        // バツの表示
        line(0.1 * width, 0.1 * height, 0.9 * width, 0.9 * height);
        line(0.1 * width, 0.9 * height, 0.9 * width, 0.1 * height);
      }
    }
  }
}