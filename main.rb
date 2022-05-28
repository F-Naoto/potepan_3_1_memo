require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_s
input_number = memo_type.chomp

if input_number == "1"
puts "拡張子を除いたファイルを入力してください。"
file_name = gets.chomp

puts "メモしたい内容を記入してください。"
puts "終了したらCtrl＋Dを押します"
# 複数行を「文字列」として読み取り。入力がされ Ctrl+D または Ctrl+Z の後 エンターキーが押されるまで待機。readlinesは配列として読み取り。
input_memo = STDIN.read
memo = input_memo.chomp
# "CSV.open('test.csv','w')"の'w'で書き込み。'a'は追記モード。
CSV.open("#{file_name}.csv" , "w") do |csv|
# test.puts ["A","B","C"]
# test << ["A","B","C"]
csv.puts ["#{memo}"]
end

elsif input_number == "2"
  puts "編集するファイル名を拡張子を除いて入力してください。"
  file_name = gets.chomp

  puts "追記する内容を入力してください。"
  puts "終了したらCtrl＋Dを押します"
  input_edition = STDIN.read

  # 複数行を「文字列」として読み取り。入力がされ Ctrl+D または Ctrl+Z の後 エンターキーが押されるまで待機。readlinesは配列として読み取り。
  editted_memo = input_edition.chomp
  # "CSV.open('test.csv','w')"の'w'で書き込み。'a'は追記モード。
  CSV.open("#{file_name}.csv" , "a") do |csv|
  # test.puts ["A","B","C"]
  # test << ["A","B","C"]
  csv.puts ["#{editted_memo}"]
  end
end

