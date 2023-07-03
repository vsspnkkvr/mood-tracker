class Day < ApplicationRecord
    has_many :notes
    validates :mooddate, :moodrating, :moodword, presence: true
    validates :moodrating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: -5 } 
    validates :mooddate, uniqueness: true

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "mooddate", "moodjournal", "moodrating", "moodword", "updated_at"]
    end
    def self.ransackable_associations(auth_object = nil)
        ["notes"]
      end
end