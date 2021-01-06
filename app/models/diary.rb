class Diary < ApplicationRecord
  belongs_to :created_day

  def first_20chars
    local_text = text
    local_text.length <= 20 ? local_text : local_text[0, 20] + '...'
  end

  def created_day
    CreatedDay.find(created_day_id).day
  end
end
