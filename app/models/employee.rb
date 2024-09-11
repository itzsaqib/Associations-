class Employee < ApplicationRecord
  belongs_to :manager
  enum role:
  {
    junior_developer: 0,
    developer: 1,
    team_lead: 2,
    testing: 3,
    ceo: 4
  }


  before_save :capitalize_name

  private

  def capitalize_name
    self.name = name.capitalize if name.present?
  end

  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "id", "manager_id", "name", "role", "updated_at" ]
  end
end
