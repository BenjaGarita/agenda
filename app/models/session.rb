class Session < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "Ambos campos deben coinsidir", if: :password
  # attr_accessible :title, :body
end
