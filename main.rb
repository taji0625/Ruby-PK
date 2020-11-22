require "pry"
require "./real_condition.rb"
require "./player.rb"
require "./com.rb"
require "./shoot_course.rb"

shoot_params = [
  {id: 1, course: "真ん中"},
  {id: 2, course: "右"},
  {id: 3, course: "左"}
]

real_condition = RealCondition.new
player = Player.new
com = Com.new

real_condition.start
player.enter_name
player.shoot_plan(shoot_courses)