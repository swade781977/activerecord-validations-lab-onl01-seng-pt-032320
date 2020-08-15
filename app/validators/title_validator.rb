class TitleValidator < ActiveModel::Validator
    def validate(record)

        unless record.title? && ["Won't Believe", "Sercret", "Top 10", "Guess"].find {|word| record.title.include?(word)}
            record.errors[:title] << (options[:message] || "You need Buzz words")
        end
    end
end

