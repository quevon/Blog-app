class Author < ApplicationRecord
    validates :name, presence:true
    validates :address, presence:true
    validate :date
    # validate :date_verify

    # def date_verify
    #     if !self.date.nil? && self.date > Date.today
    #         errors.add(:date, "Date should not be later than today")
    #     end
    # end
   
end
