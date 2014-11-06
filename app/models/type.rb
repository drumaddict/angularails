class Type < ActiveRecord::Base
  has_many :things
  accepts_nested_attributes_for :things, allow_destroy: true
end