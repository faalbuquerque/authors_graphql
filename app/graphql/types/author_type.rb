class Types::AuthorType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :age, Int, null: true
  field :birth_year, Int, null: true, description: 'Ano de nascimento'

  field :articles, [Types::ArticleType], description: 'Lista os posts do autor' do
    argument :sort, String, required: false
    argument :limit, Int, required: false
  end

  def birth_year
    DateTime.current.year - object.age
  end
end
