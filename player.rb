require "./shoot_course.rb"

class Player

  def initialize(shoot_params)
    @shoot_courses = []
    register_shoot_course(shoot_params)
  end

  def register_shoot_course(shoot_params)
    shoot_params.each do |params|
      @shoot_courses << ShootCourse.new(params)
    end
  end

  def enter_name
    print "プレイヤーの名前を入力 >"
    @player_name = gets
    puts <<~TEXT
    -----------------------------------------

    実況：「これから#{@player_name}VSネイマールのPK戦が始まります!!」

    -----------------------------------------
    TEXT
  end

  def shoot_plan(shoot_courses)
    puts "#{@player_name}:「どこに蹴ろうかな？」"
    shoot_courses.each do |shoot_course|
      puts "#{shoot_course[:id]}: #{shoot_course[:course]}"
    end
    while true
      print "シュートコースの番号を選択 > "
      select_shoot_num = gets.to_i
      break if (1..3).include?(select_shoot_num)
        puts "1〜3の番号から選んでください。"
    end
    shoot[select_shoot_num - 1]
  end

end