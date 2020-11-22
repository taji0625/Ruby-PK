class ShootCourse
  attr_accessor :id, :course

  def initialize(shoot_params)
    @id = shoot_params[:id]
    @course = shoot_params[:course]
  end
end