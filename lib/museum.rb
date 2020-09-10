class Museum
  attr_reader :name, :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommend_exhibits = []
    recommend_exhibit_names =[]
    exhibit_names = @exhibits.map do |exhibit|
        exhibit.name
      end
      exhibit_names.each do |name|
        recommend_exhibit_names << name if patron.interests.include?(name)
      end
    recommend_exhibit_names.each do |name|
      @exhibits.each do |exhibit|
        recommend_exhibits << exhibit if exhibit.name == name
      end

    end
    recommend_exhibits
    # require "pry"; binding.pry
  end

end
