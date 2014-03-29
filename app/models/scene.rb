class Scene < ActiveRecord::Base
  belongs_to :game
  has_many :exits, :class_name => "Gateway", :foreign_key => :source_scene_id
  has_many :entrances, :class_name => "Gateway", :foreign_key => :destination_scene_id
end
