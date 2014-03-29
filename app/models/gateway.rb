class Gateway < ActiveRecord::Base
  belongs_to :source_scene, :class_name => "Scene", :foreign_key => :source_scene_id
  belongs_to :destination_scene, :class_name => "Scene", :foreign_key => :destination_scene_id
  has_many :rules
  has_many :actions
end
