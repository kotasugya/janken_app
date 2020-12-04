#あっち向いてホイ
def hoi
  hois = ["上", "下", "左", "右"]
  puts "あっち向いて"
  puts "0(上) 1(下) 2(左) 3(右)"
  @your_dir = gets.to_i
  if @your_dir > 3
    puts "そんな選択肢はありません、選び直してください"
    return hoi
  end
  @enemy_dir = rand(4)
  puts "-----------------"
  puts "ホイ"
  puts "あなた: #{hois[@your_dir]}"
  puts "相手: #{hois[@enemy_dir]}"
  puts "-----------------"
end

def hoi_win
  hoi
  if @your_dir == @enemy_dir
    puts "あなたの勝ちです"
    return false
  else#それ以外はじゃんけんに戻す
    return true
  end
end

def hoi_loss
  hoi
  if @enemy_dir == @your_dir
    puts "あなたの負けです"
    return false
  elsif　@enemy_dir != @your_dir
    return true
  end
end

#じゃんけん

def janken
  puts "じゃんけん..."
  jankens = ["グー", "チョキ", "パー"]
  puts "0(グー) 1(チョキ) 2(パー)"
  @your_hand = gets.to_i
  if @your_hand >= 3
    puts "そんな選択肢はありません、選び直してください"
    return true
  end
  @enemy_hand = rand(3)
  puts "-----------------"
  puts "あなたは#{jankens[@your_hand]}を出しました"
  puts "相手は#{jankens[@enemy_hand]}を出しました"
  puts "-----------------"
  
  if @your_hand == @enemy_hand
    puts "あいこです"
    return true

  elsif (@your_hand == 0 && @enemy_hand == 2) || 
    (@your_hand == 1 && @enemy_hand == 0) ||
    (@your_hand == 2 && @enemy_hand == 1)
    hoi_loss
    
  else
    hoi_win
  end
end

next_game = true

while next_game do
  next_game = janken
end



