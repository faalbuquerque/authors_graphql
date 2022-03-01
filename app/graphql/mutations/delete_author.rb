class Mutations::DeleteAuthor < GraphQL::Schema::Mutation

  argument :name, String, required: true

  # def resolve(name:)
  #   author = Author.where(name: name).first
 
  #   return 'Algo deu errado' if author.nil?
 
  #   author.destroy and 'Autor apagado'
  #  end

  #  def resolve(name:)
  #   (!!Author.where(name: name).first&.destroy).to_s
  #  end

  def resolve(name:)
    (!!Author.where(name: name).first&.destroy)? 'Autor apagado' : 'Erro!'
   end
end