class Day < ApplicationRecord
    has_many :notes
    validates :mooddate, :moodrating, :moodword, presence: true
    validates :moodrating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: -5 } 
    validates :mooddate, uniqueness: true

end
