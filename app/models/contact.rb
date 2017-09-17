class Contact < ApplicationRecord
  belongs_to :user

  validates :name, :contact_method, :last_contacted_on, presence: true

  CONTACT_METHODS = ["Phone", "Facetime", "FB Messenger", "What's App", "Text", "Email", "Other"]

  default_scope -> { order(last_contacted_on: :asc) }





  def contact!
    self.update_column(:last_contacted_on, Time.now)
  end
end
