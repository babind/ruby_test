class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  # has_many :tickets, dependent: :destroy
  has_many :tickets, dependent: :delete_all
end
