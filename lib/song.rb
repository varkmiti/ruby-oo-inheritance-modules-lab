require 'pry'

require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'


class Song

  extend Memorable::ClassMethods
  extend Findable
  include Paramable 
  include Memorable::InstanceMethods

 


  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def self.count
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end
end
