class Pcop::Class < ApplicationRecord
  has_many  :accounts, class_name: 'Pcop::Account', foreign_key: 'pcop_class_id'
  validates :id, length: { maximum: 1 }, presence: true
  validates :name, length: { maximum: 255 }, presence: true, uniqueness: true
  validates :description, length: { maximum: 255 }
end
