class Game < ActiveRecord::Base
  include Tokenable

  has_many :scenes
  belongs_to :first_scene, :class_name => "Scene", :foreign_key => :first_scene_id
end
