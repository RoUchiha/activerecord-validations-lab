class TitleValidator < ActiveModel::Validator 

    def validate(record)
        unless record.title.to_s.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
            record.errors[:title] << "Title is not clickbait-y enough!"
        end
    end

end