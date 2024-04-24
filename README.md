# SYLPHIDE
### Spatial Yield Line Photogenic Higher Intentions Dodging Enrollment
厚生局の保険医療機関・保険薬局の指定等一覧及び保険医・保険薬剤師の新規登録一覧をリスト化する

#### データ取得元
- 北海道厚生局
https://kouseikyoku.mhlw.go.jp/hokkaido/gyomu/gyomu/hoken_kikan/code_ichiran.html
- 東北厚生局
https://kouseikyoku.mhlw.go.jp/tohoku/gyomu/gyomu/hoken_kikan/itiran.html
- 関東信越厚生局
https://kouseikyoku.mhlw.go.jp/kantoshinetsu/chousa/shitei.html
- 東海北陸厚生局
https://kouseikyoku.mhlw.go.jp/tokaihokuriku/newpage_00287.html
- 近畿厚生局
https://kouseikyoku.mhlw.go.jp/kinki/tyousa/shinkishitei.html
- 中国四国厚生局
https://kouseikyoku.mhlw.go.jp/chugokushikoku/chousaka/iryoukikanshitei.html
- 四国厚生局
https://kouseikyoku.mhlw.go.jp/shikoku/gyomu/gyomu/hoken_kikan/shitei/index.html
- 九州厚生局
https://kouseikyoku.mhlw.go.jp/kyushu/gyomu/gyomu/hoken_kikan/index_00006.html

#### 手順

1. 全ての都道府県ごとの薬局リストを取得し，xlsxsとしたxlsxを一つのディレクトリに配備する
2. Rにてpharmacies_clean.Rで一つのCSVファイル化及び必要なカラムの抽出を行う
3. pythonにて空白セルを含む行を削除する
4. Rにて薬局コード(micode)の不要な記号を削除する
5. giselleでジオコーディングを行う
