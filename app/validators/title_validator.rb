class TitleValidator < ActiveModel::Validator 
  def validate(record)
    if record.title == nil
      return
    end
    unless record.title.match?(/Won't Believe/ || /Secret/ || /Top/ || /Guess/)
        record.errors[:title] << "Title must be clickbaity and present"
    end
  end
end
