class Types::ArticleType < Types::BaseObject
  field :release_date, String, null: false
  field :title, String, null: false
  field :description, String, null: false

  def release_date
    "#{object.release_date.day}/#{object.release_date.month}/#{object.release_date.year}"
  end
end