class Manager < ApplicationRecord
  has_many :employees, dependent: :destroy
  accepts_nested_attributes_for :employees, allow_destroy: true

  before_save :capitalize_name

  private

  def capitalize_name
    self.name = name.capitalize if name.present?
  end
end
