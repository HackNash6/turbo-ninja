class Thing < ActiveRecord::Base
  belongs_to :user
  belongs_to :thing_type

  validates :name, presence: true
  validates :uuid, presence: true, uniqueness: true
end
