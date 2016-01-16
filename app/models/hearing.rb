class Hearing < ActiveRecord::Base

    has_many :messages
    belongs_to :user
    has_one :court, :through => :user

end
