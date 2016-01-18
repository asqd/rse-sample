class DealInfo < ActiveRecord::Base
  acts_as_paranoid

  ### Relations
  belongs_to :deal_infoable, polymorphic: true, touch: true
  has_many :offers, -> { with_deleted }, dependent: :destroy

  accepts_nested_attributes_for :offers
end
