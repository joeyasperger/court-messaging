class User < ActiveRecord::Base

    belongs_to :court
    has_many :hearings
    has_many :messages, :through => :hearings

end
