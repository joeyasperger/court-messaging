class Court < ActiveRecord::Base

    has_many :users
    has_many :hearings, :through => :users
    has_many :messages, :through => :hearings

end
