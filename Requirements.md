- 完成アプリケーションURL：https://bookers-level2.herokuapp.com  
  
- Rspecのテストコマンド：$ bundle exec rspec spec/ --format documentation  
  
- 結果
rspec ./spec/system/books_spec.rb:34 # 投稿のテスト サイドバーのテスト 表示の確認 投稿に失敗する
rspec ./spec/system/books_spec.rb:50 # 投稿のテスト 編集のテスト 他人の投稿の編集画面への遷移 遷移できない
rspec ./spec/system/books_spec.rb:76 # 投稿のテスト 編集のテスト フォームの確認 編集に成功する
rspec ./spec/system/books_spec.rb:82 # 投稿のテスト 編集のテスト フォームの確認 編集に失敗する
rspec ./spec/system/books_spec.rb:100 # 投稿のテスト 一覧画面のテスト 表示の確認 自分と他人の画像のリンク先が正しい
rspec ./spec/system/books_spec.rb:121 # 投稿のテスト 詳細画面のテスト 自分・他人共通の投稿詳細画面の表示を確認 ユーザー画像・名前のリンク先が正しい
rspec ./spec/system/books_spec.rb:135 # 投稿のテスト 詳細画面のテスト 自分の投稿詳細画面の表示を確認 投稿の編集リンクが表示される
rspec ./spec/system/header_spec.rb:36 # ヘッダーのテスト ログインしていない場合 ヘッダーのリンクを確認 Home画面に遷移する
rspec ./spec/system/header_spec.rb:43 # ヘッダーのテスト ログインしていない場合 ヘッダーのリンクを確認 About画面に遷移する
rspec ./spec/system/header_spec.rb:115 # ヘッダーのテスト ログインしている場合 ヘッダーのリンクを確認 logoutする
rspec ./spec/system/top_spec.rb:10 # トップページのテスト ボディ部分のテスト 表示の確認 Log inリンクが表示される
rspec ./spec/system/top_spec.rb:15 # トップページのテスト ボディ部分のテスト 表示の確認 Sign Upリンクが表示される
rspec ./spec/system/top_spec.rb:30 # トップページのテスト ボディ部分のテスト ログインしている場合の挙動を確認 Log inリンクをクリックしたらユーザー詳細画面へ遷移する
rspec ./spec/system/top_spec.rb:35 # トップページのテスト ボディ部分のテスト ログインしている場合の挙動を確認 Sign Upリンクをクリックしたらユーザー詳細画面に遷移する
rspec ./spec/system/top_spec.rb:43 # トップページのテスト ボディ部分のテスト ログインしていない場合の挙動を確認 Log inリンクをクリックしたらログイン画面へ遷移する
rspec ./spec/system/top_spec.rb:48 # トップページのテスト ボディ部分のテスト ログインしていない場合の挙動を確認 Sign Upリンクをクリックしたら新規登録画面に遷移する
rspec ./spec/system/users_spec.rb:9 # ユーザー認証のテスト ユーザー新規登録 新規登録画面に遷移 新規登録に成功する
rspec ./spec/system/users_spec.rb:67 # ユーザーのテスト サイドバーのテスト 表示の確認 User infoと表示される
rspec ./spec/system/users_spec.rb:79 # ユーザーのテスト サイドバーのテスト 表示の確認 編集リンクが表示される
rspec ./spec/system/users_spec.rb:94 # ユーザーのテスト 編集のテスト 他人の編集画面への遷移 遷移できない
rspec ./spec/system/users_spec.rb:116 # ユーザーのテスト 編集のテスト 表示の確認 編集に成功する
rspec ./spec/system/users_spec.rb:121 # ユーザーのテスト 編集のテスト 表示の確認 編集に失敗する
rspec ./spec/system/users_spec.rb:139 # ユーザーのテスト 一覧画面のテスト 表示の確認 自分と他の人の画像が表示される
rspec ./spec/system/users_spec.rb:146 # ユーザーのテスト 一覧画面のテスト 表示の確認 showリンクが表示される