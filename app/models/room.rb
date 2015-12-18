class Room < ActiveRecord::Base

  self.inheritance_column = '_type'

  belongs_to :building, touch: true
end
