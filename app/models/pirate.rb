class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []
  def initialize(params)
    self.name = params[:name]
    self.weight = params[:weight]
    self.height = params[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
