class RealCondition
  attr_accessor :player_name
  def start
    puts <<~TEXT
    ---------------------------------------

    実況：「これからPK線を開始していきます！
           プレイヤーの名前を入力して下さい。」

    ---------------------------------------
    TEXT
  end
end


