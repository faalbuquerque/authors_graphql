class Types::AuthorInputType < Types::BaseInputObject
  graphql_name 'AuthorInputType'
  description 'Argumentos necessarios para criar um autor'

  argument :name, String, required: true
  argument :age, Int, required: false
end