class Cost < ActiveRecord::Base
  attr_accessible :description, :frequency, :name, :user_id, :value
end
