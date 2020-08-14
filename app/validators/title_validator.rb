class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.include?(w/["Won't Believe", "Sercret", "Top 10", "Guess"])
    end
end