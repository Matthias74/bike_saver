class Repair < ActiveRecord::Base
  belongs_to :client, class_name: 'User', foreign_key: 'client_id'
  belongs_to :saver, class_name: 'User', foreign_key: 'saver_id'
  validates :category, presence: true
  validates :address, presence: true
end
