class Building < ActiveRecord::Base
  validates :name, uniqueness: true

  has_ancestry
  has_many :rooms, dependent: :destroy
end
