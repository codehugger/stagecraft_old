class Instance < ActiveRecord::Base
  include Tokenable

  belongs_to :player
  belongs_to :game
  has_many :instance_variables
  has_many :variable, :through => :instance_variables
  belongs_to :current_scene, :class_name => "Scene", :foreign_key => :current_scene_id
end
