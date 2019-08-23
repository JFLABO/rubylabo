
class MyClass
require 'json'
require 'csv'
require 'pp'

def self.to_hash(str)
  str.scan(/(\w+):\s+(\d+)/).map{|k, v| [k.to_sym, v.to_i] }.to_h
end
    
lang = 'language'
RUBY = 'Ruby'

json = <<"EOS" # ここをダブルコーテーションで囲う
{
  "#{lang}": "#{RUBY}"
}
EOS

json = <<EOS # コーテーション無しでもOK
{
  "#{lang}": "#{RUBY}"
}
EOS
     def self.func02 d01
        require 'date'
        nt= DateTime.now
        
        begin
        match_data = d01.match(/(?<year>\d{4})\/(?<month>\d{2})\/(?<day>\d{2})/)
        match_data2 = d01.match(/(?<hour>\d{2})\:(?<min>\d{2})/)

        if match_data then
            #p match_data[:year]
            #p match_data[:month]
            #p match_data[:day]
            
            s=match_data[:year]+"-"+match_data[:month]+"-"+match_data[:day]
            #p s
            #(Date.today - Date.new(2017, 6 , 1)).to_i
            
            #days=(Date.today - Date.new(match_data[:year].to_i, match_data[:month].to_i,match_data[:day].to_i)).to_i
            #マイナスは未来日　プラスは過去日
            
            #puts "　#{days}日 アポイント時刻：#{match_data2}"
            #p match_data2
        end
        rescue uknerror => ex
            puts "uknerror"
        end
        #format = ['%Y-%m-%d %H:%M:%S'] 
        #format = ['%Y-%m-%d'] 
        #a=s
        #days=(Date.today - Date.new(match_data[:year], match_data[:month] , match_data[:day])).to_i
            
        #    p days
        #date = DateTime.parse(a).to_s
        #date = DateTime.strptime(a)
        #c = date - nt
        #    p c.to_i
            #未来日　過去日が何日か見れる
            #新しい順に並べ替え
    end
         
    def self.func04 obj
        require 'date'
        nt= DateTime.now
        @i=1
        obj.each do |data|
        p "#{@i} 件目のデータ-- -- -- -- -- -- ♫"

        #print("num = ", num,"\n")
        #p data
        #d01=data.to_s
        #hoge="a"
        hoge=data.to_s
        hoge01=hoge.split(",").map { |m| m.delete('[]"\\\\')}
        hash=hoge01[1]
        #p hash
        hash_as_string = hoge01[1]
        d01=hoge01[1]
        puts d01.to_s
        begin
        match_data = d01.match(/(?<year>\d{4})\/(?<month>\d{2})\/(?<day>\d{2})/)
        match_data2 = d01.match(/(?<hour>\d{2})\:(?<min>\d{2})/)

        if match_data then
            #p match_data[:year]
            #p match_data[:month]
            #p match_data[:day]
            
            s=match_data[:year]+"-"+match_data[:month]+"-"+match_data[:day]
            #p s
            #(Date.today - Date.new(2017, 6 , 1)).to_i
            
            days=(Date.today - Date.new(match_data[:year].to_i, match_data[:month].to_i,match_data[:day].to_i)).to_i
            #マイナスは未来日　プラスは過去日
            
            puts "　#{days}日 アポイント時刻：#{match_data2}"
            #p match_data2
        end
        rescue uknerror => ex
            puts "uknerror"
        end
            @i=@i+1
        #a=hash_as_string.gsub('=>', ':')
        #a =HASH.parse(hash)
        #JSON.parse hash_as_string.gsub('=>', ':')

        #p a.class
        
        #p a[:日程]
        #hash={}
        #hash=self.to_hash(hoge01[1])
        #p hoge01[1]
        #hoge = hoge.split(',').map { |m| m.delete('[]"\\\\')}
        #hoge_a = self.to_hash(hoge01[1])
        #p hoge_a[:mes]
        #p hoge
        #データ整形
        #最初の列の削除
        #カンマの位置
        #最初からカンマの位置まで削除
        #hash
        #loc=d01.index(",")
        
        #d01=data["mes"]
        #d02=d01.slice(0,loc+2)
        #d02=d01.chomp!
        #d02=d01.chop!
        #p d02
        #CSV.parse(d02) do |fg|
        #  puts fg[0] # => 'foo'
        #  puts fg[1] # => 'bar'
        #  puts fg[2] # => 'baz'
        #end
        #p d02
        #hash={}
        #hash.store(d01)
        #p data["mes"]
end
         
    end
=begin
[1] pry(main)> hash = {}
=> {}
[2] pry(main)> hash = Hash.new
=> {}

=end
    
=begin
[1] pry(main)> "abbbc".match(/ab*c/)
=> #<MatchData "abbbc">
[2] pry(main)> "ac".match(/ab*c/)
=> #<MatchData "ac">
[3] pry(main)> "ac".match(/ab+c/)
=> nil
[4] pry(main)> "ac".match(/ab{1,2}c/)
=> nil
[5] pry(main)> "abc".match(/ab{1,2}c/)
=> #<MatchData "abc">
[6] pry(main)> "abbc".match(/ab{1,2}c/)
=> #<MatchData "abbc">
[7] pry(main)> "abbbc".match(/ab{1,2}c/)
=> nil
=end
    
=begin
if ARGV[0] =~ Regexp.new(ARGV[1])
  puts "文字列 #{ARGV[0]} は 正規表現 #{ARGV[1]} とマッチします"
else
  puts "文字列 #{ARGV[0]} は 正規表現 #{ARGV[1]} とマッチしません"
end
=end
    
    
=begin
[1] pry(main)> "2014/05/01".match(/\d{4}\/\d{2}\/\d{2}/)
=> #<MatchData "2014/05/01">
[2] pry(main)> "2014-05-01".match(/\d{4}\/\d{2}\/\d{2}/)
=> nil
[3] pry(main)> "2014/5/1".match(/\d{4}\/\d{2}\/\d{2}/)
=> nil
=end
    
#pry(main)> hash[:ace] = 1
#    hash.delete("jack")
#Hash.clear
    
    #actlogを記録する
    #引き寄せリスト
      
#ハッシュを生成する
=begin
require 'json'
 
File.open("sample2.json", 'w') do |file|
  hash = { "Ocean" => { "Squid" => 10, "Octopus" =>8 }}
  str = JSON.dump(hash, file)
end
=end

=begin
また、繰り返しと同時によく使われるメタ文字に、.（ドット）があります。これは、改行以外の任意の1文字にマッチするメタ文字です。

[8] pry(main)> "abc".match(/a.?c/)
=> #<MatchData "abc">
[9] pry(main)> "a0c".match(/a.?c/)
=> #<MatchData "a0c">
[10] pry(main)> "a@c".match(/a.?c/)
=> #<MatchData "a@c">
[11] pry(main)> "axxc".match(/a.?c/)
=> nil
=end
    
    
=begin
hash = { "Ocean" => { "Squid" => 10, "Octopus" =>8 }}
json_str = JSON.pretty_generate(hash)
puts json_str
=end
    
#バックラッシュ記法

#syslogにログを書く
    
#％記法
      
#変数定数リテラル
      
#正規表現にあてる

#表示する
#io=open('| ls -la')
#p io.read
    def self.func01
        arr=[]
        #ファイルを読み込む
        file=File.open("data/your_note.txt","r")
          file.each_line do |labmen|
              #puts labmen
              str=labmen

              if str.include?("日程") then
                  #配列に格納
                  arr.push(str.chomp)
                  #デバッグ表示
                  #p str.chomp!
              else

              end
              #a=Regexp.new(labmen)
              #a.match(^\d{4}-\d{1,2}-\d{1,2}$)
              #puts a.match("\d{4}/\d{1,2}/\d{1,2}")
          end
        #file.read
        file.close

      #puts arr.length 
      puts "#{arr.length}件の予定が含まれていました。"
      tdata=""
      #arr2={}
      hash={}
      # 2次元ハッシュの初期化
      #h = Hash.new { |hash,key| hash[key] = Hash.new {} }
      h={}
      i=0
      recarr=Array.new(3)
      arr.each {|data| 
        #puts data 
        tdata=data
        rhash1,rhash2=self.func03(data.to_s)
        #h.store("obj"+i.to_s,hash)
        #p rhash
        #h.store(rhash1,rhash2)
        recarr.push([rhash1["date"],"[#{rhash2}]","[#{rhash1}]"])
        #self.func02("2019/08/23")
        #i=i+1
        #p h
        #self.func02(tdata)
        }
        
        #p Hash[h.sort]
        # こうすれば、配列内の各ハッシュのキーidでソートできる
        #      h.sort do |a, b|
        #          a[:date] <=> b[:date]
        #      end
        #p h.sort { |x, y| x.last[:date] <=> y.last[:date] }
        #p recarr.sort_by! { |a| a[:date] }
        #p recarr.sort_by {|x| x[1]}
        recarr = recarr.compact
        basedata= recarr.sort_by {|x| x[0]}.reverse
        self.func04(basedata)
        #p basedatas
        #p recarr.sort {|a,b| a[1] <=> b[1]}.reverse
        #p recarr
        #p h
        file=File.open("data/file01.json", "w") do |io|
            #JSON.dump([1, 2, 3, {"foo" => "bar"}], io)
            JSON.dump(recarr.to_json, io)
            # file.json に [1,2,3,{"foo":"bar"}] と書き込まれる
        end
        file.close
    #      p arr
        file=File.open("data/file.json", "w") do |io|
            #JSON.dump([1, 2, 3, {"foo" => "bar"}], io)
            JSON.dump(arr, io)
            # file.json に [1,2,3,{"foo":"bar"}] と書き込まれる
        end
        file.close

    end
    
def self.func03 obj
   # 初期化
   #hash = Hash.new { |h,k| h[k] = {} }
   hash={}
   hash_a={}
   hash_b={}
    
   match_data = obj.match(/(?<year>\d{4})\/(?<month>\d{2})\/(?<day>\d{2})/)
   if match_data then
       s=match_data[:year]+"-"+match_data[:month]+"-"+match_data[:day]
   else
      match_data="" 
   end
   arr01=s
   arr02=obj
   hash_a={"date"=>"#{s}"}
   hash_b=obj
   #hash[hash_a]=hash_b
   #p hash
   return hash_a,hash_b
   #return arr01,arr02
end
end