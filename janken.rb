#じゃんけん
def janken
  puts "じゃんけん..."
  jankens = ["グー", "チョキ", "パー"]
  puts "0(グー) 1(チョキ) 2(パー) 3(しっぽを巻いて逃げ出す)"
  @your_hand = gets.to_i
  @enemy_hand = rand(4)
  puts "-----------------"
  puts "あなたは#{jankens[@your_hand]}を出しました"
  puts "相手は#{jankens[@enemy_hand]}を出しました"
  puts "-----------------"
end
#あっち向いてホイ
def hoi
  hois = ["上", "下", "左", "右"]
  puts "あっち向いて"
  puts "0(上) 1(下) 2(左) 3(右)"
  @your_dir = gets.to_i
  @enemy_dir = rand(5)
  puts "ホイ"
  puts "-----------------"
  puts "あなた: #{hois[@your_dir]}"
  puts "相手: #{hois[@enemy_dir]}"
  puts "-----------------"
end

#あっち向いてホイの判定
def hoi_win
  if @your_dir == @enemy_dir
    puts "あなたの勝ちです"
  else #それ以外はじゃんけんに戻す
    janken
  end
end

def hoi_loss
  if @enemy_dir == @your_dir
    puts "あなたの負けです"
  else　#それ以外はじゃんけんに戻す
    janken
  end
end


janken


#じゃんけん判定とあっち向いてホイの結果
if @your_hand == @enemy_hand
  puts "あいこです"
  janken

elsif #じゃんけんで負けた場合
  (@your_hand == 0 && @enemy_hand == 2) || 
  (@your_hand == 1 && @enemy_hand == 0) ||
  (@your_hand == 2 && @enemy_hand == 1)
  hoi
  hoi_loss

elsif @your_hand == 3
  puts "あなたは全てに敗北しました"

else　#勝った場合
  puts "あなたの勝ちです"
end


