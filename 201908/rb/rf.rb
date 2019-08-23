require 'json'
=begin

arr=[]
        #ファイルを読み込む
        file=File.open(File.dirname(__FILE__) + "/data/file01.json","r")
          file.each_line do |labmen|
              #puts labmen
              str=labmen
                  arr.push(str.chomp)
          end
        #file.read
        file.close
        p arr
=end

File.open(File.dirname(__FILE__) + '/data/file01.json') do |j|
  #hash = JSON.load(j)
    #hash = JSON.parse(j)
    #hash={}
    s=JSON.load(j)
    hoge=s
    hoge01=hoge.split(",").map { |m| m.delete('[]"\\\\')}
    
    #hash = JSON.load(j)
    p hoge01
end


#p hash
#parseメソッドはstringクラスに適用。

#p JSON.parse(STDIN.read)

=begin
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
=end
=begin
        open("data/file01.json", "r") do |io|
            #JSON.dump([1, 2, 3, {"foo" => "bar"}], io)
            #JSON.dump(h, io)
            # file.json に [1,2,3,{"foo":"bar"}] と書き込まれる
                file.each_line do |labmen|
                  # labmenには読み込んだ行が含まれる
                  puts labmen
                end
        end
=end