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

  if (isAnswered == false) {
    // 回答待ち
    if (keyPressed == true) {
      // 回答したら
      isAnswered = true; // 回答した
      lapseAnswered = millis() / 1000; // 回答時経過時間を記録
      if (key == answer) {
        // 正解だったら
        score++; // 正解数を増やす
        isCorrect = true; // 正解した
      } else {
        isCorrect = false; // 間違えた
      }
    }
    
    // 制限時間
    float timeLimit = 5 - (millis() / 1000 - lapseDisplayed);
    textAlign(RIGHT, CENTER); // 文字列を右揃え
    text("残り時間: " + timeLimit, 310, 15);
    
    if (timeLimit < 0) {
      // 回答制限時間を超えたら
      isAnswered = true; // 回答したことにする
      lapseAnswered = millis() / 1000; // 回答時経過時間を記録 
      isCorrect = false; // 間違えたことにする
    }
  } else {
    // 結果表示
    if (millis() / 1000 - lapseAnswered > 2) {
      // 回答して2秒経過したら
      isAnswered = false; // 未回答に戻す　
      isCorrect = false; // 誤答に戻す
      lapseDisplayed = millis() / 1000; // 問題表示開始時間を記録
      quizNum = 2; // クイズ2へ
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