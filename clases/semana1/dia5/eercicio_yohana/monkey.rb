class Monkey
  @@legs = 2
  @@arms = 2

  def self.have_thumb
    true
  end

  def pooping
    puts "I'm pooping"
  end

  def peeing
    puts "I'm peeing"
  end

  private

  def evolve
    puts "I'm evolving!"
  end
end