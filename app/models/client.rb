# frozen_string_literal: true
class Client < ApplicationRecord
  has_many :sales
  validates :name, presence: true
  validates :contact_no, numericality: true
  # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }
  validate :age_less_than_25
  validates :age, numericality: { message: "%{value} seems wrong" }
  scope :find_name, -> { where("name = ?", 'Hamza Ahmad') }
  scope :find_contacts, -> { where("contact_no = ?", '3338606280')}

  def self.find_name
    where("name = ?", 'Hamza Ahmad')
  end

  private

  def age_less_than_25
    if age > 25
      errors.add(:age, 'Your age is greater than 25')
    end
  end

end
