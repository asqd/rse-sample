class Building < ActiveRecord::Base
  validates :name, uniqueness: true
  acts_as_paranoid

  has_ancestry
  has_many :rooms, dependent: :destroy
  has_one  :deal_info, as: :deal_infoable, dependent: :destroy

end
