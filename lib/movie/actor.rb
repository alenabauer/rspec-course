class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I'll be back."
  end

  def fall_off_ladder
    "Call my agent. No way!"
  end

  def light_on_fire
    false
  end
end
