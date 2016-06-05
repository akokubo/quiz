int scene; // シーン番号

PFont font18; // 18ピクセルのフォント
PFont font36; // 36ピクセルのフォント

void setup() {
  size(320, 320);
  scene = 0; // シーン番号を0に

  // フォントの生成
  font18 = createFont("MS Gothic", 18);
  font36 = createFont("MS Gothic", 36);
}

void draw() {
  switch(scene) {
  case 0:
    opening(); // 開始画面
    break;
  case 1:
    playing(); // プレイ画面
    break;
  case 2:
    result(); // 結果画面
    break;
  default:
    break;
  }
}