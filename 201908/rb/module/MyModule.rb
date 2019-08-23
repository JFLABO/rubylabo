=begin
モジュールは単独ではインスタンス化できない
モジュールは継承できない
モジュールはクラスやモジュールに
取り込むことができる
=end
require 'date'
module MyModule
    def self.methodA
        @a=DateTime.now
        f1=File.open("data/act.log","a+") do |f|
            f.puts @a
        end
        #f1.close
        p @a
    end
    def self.methodB mes
        @a=DateTime.now
        f1=File.open("data/act.log","a+") do |f|
            f.puts "#{mes} #{@a}"
        #f1.close
        end
        p @a
    end

end