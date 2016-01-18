class Offer < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :deal_info, -> { with_deleted }
end