class Role < ApplicationRecord
    belong_to: movie 
    belong_to: person 
end
