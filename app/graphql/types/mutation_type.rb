module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor,
          null: true, description: 'Cria um autor'

    field :delete_author, String, mutation: Mutations::DeleteAuthor,
          null: false, description: 'Apaga um autor'
  end
end
