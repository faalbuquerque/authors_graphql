class Article < ApplicationRecord
  belongs_to :author

  scope :limite,->(limit){ limit(limit) }
  scope :ordena,->(sort){ order(title: sort) if sort }
  scope :mais_velhos_que_dias, ->(num){where(release_date: (..(Date.current - num.days)))}
end
