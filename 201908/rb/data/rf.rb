#
begin
  # File.openはファイルをオープンし、Fileオブジェクトを返す
  # 第1引数: ファイルパス
  # 第2引数: ファイルモード (デフォルト => 'r')
  # 第3引数: ファイルを生成する場合のパーミッション(デフォルト => 0666)
  # 失敗した場合にErrno::EXXX例外が発生
  #
  # File.openにブロックを渡すと、
  # ブロックが終了した時点でファイルを自動でクローズする
  File.open('data/file01.json') do |file|
    # IO#each_lineは1行ずつ文字列として読み込み、それを引数にブロックを実行する
    # 第1引数: 行の区切り文字列
    # 第2引数: 最大の読み込みバイト数
    # 読み込み用にオープンされていない場合にIOError
    file.each_line do |labmen|
      # labmenには読み込んだ行が含まれる
      puts labmen
    end
  end
# 例外は小さい単位で捕捉する
rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end