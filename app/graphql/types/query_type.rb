module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    field :authors, [Types::AuthorType], null: false, description: 'Listar autores'

    field :author, Types::AuthorType, null: true, description: 'Mostra um autor' do
     argument :name, String, required: true
    end

    def authors
      Author.all
    end

    def author(name:)
      Author.where(name: name)&.first
    end
  end
end
