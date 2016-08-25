class Hippo

  def initialize
    @name
    @color
    @age
    @current_speed = 0
    @jaws = "closed"
  end

  def name
    @name
  end

  def color
    @color
  end

  def age
    @age
  end

  def name= new_name
    @name = new_name
  end

  def color= new_color
    @color = new_color
  end

  def age= new_age
    @age = new_age
  end

  def current_speed
    @current_speed
  end

  def accelerate
    @current_speed = @current_speed + 4
  end

  def decelerate
    @current_speed = @current_speed - 1
    if @current_speed < 0
      @current_speed = 0
    end
  end

  def jaws
    if @jaws == "closed"
      @jaws = "open"
    else
      @jaws = "closed"
    end
  end

  def jaws_open
    @jaws
  end
end
