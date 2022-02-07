class Role < ApplicationRecord
    belong_to: company 
    belong_to: person 
end
