class Gateway < ActiveRecord::Base
  include Tokenable
  include Rulable
  include Eventable

  belongs_to :source_scene, :class_name => "Scene", :foreign_key => :source_scene_id
  belongs_to :destination_scene, :class_name => "Scene", :foreign_key => :destination_scene_id
  has_many :rules
  has_many :events

  def to_s
    "#{source_scene} -> #{destination_scene}"
  end

  alias_method :name, :to_s
end
