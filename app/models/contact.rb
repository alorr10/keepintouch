class Contact < ApplicationRecord
  belongs_to :user

  validates :name, :contact_method, :last_contacted_on, presence: true

  CONTACT_METHODS = ["Phone", "Facetime", "FB Messenger", "What's App", "Text", "Email", "Other"]
end
