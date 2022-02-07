class Role < ApplicationRecord
    belongs_to :Movie 
    belongs_to :Person 
end
