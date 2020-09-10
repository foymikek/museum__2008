class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name     = name
    @exhibits = []
    @patrons  = []
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
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    require "pry"; binding.pry
    patrons_by_exhibit_interest = {}
    @exhibits.each do |exhibit|
      if patrons_by_exhibit_interest[:exhibit].nil?
        patrons_by_exhibit_interest[:exhibit] = a
      end
    end
  end

end
