class Diary < ApplicationRecord
  belongs_to :created_day

  # https://www.web-knowledge-info.com/wp/ruby-on-rails32/ を参考にAction Textを導入しました
  has_rich_text :text
  has_rich_text :last
end

