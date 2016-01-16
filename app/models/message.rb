class Message < ActiveRecord::Base

    belongs_to :hearing
    has_one :user, :through => :hearing
    has_one :court, :through => :user

end
