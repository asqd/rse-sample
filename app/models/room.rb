class Room < ActiveRecord::Base
  # include ParanoidConcern
  acts_as_paranoid
  self.inheritance_column = '_type'

  belongs_to :building, touch: true
  has_one  :deal_info, -> { with_deleted }, as: :deal_infoable, dependent: :destroy
end
