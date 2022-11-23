# frozen_string_literal: true
class Client < ApplicationRecord
  has_many :sales
  # validates :name, presence: true
  # validates_length_of :name, maximum: 10
  after_save :after_save_status
  before_save :before_save_status
  after_commit :after_commit_status
  def after_save_status
    puts "Client Details Are Saved Using Callbacks"
  end
  def before_save_status
    puts "Client Details Are Saved Using Before Save"
  end
  def after_commit_status
    puts "Client Details Saved Using After Commit"
  end
end
