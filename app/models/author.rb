class Author < ApplicationRecord
  has_many :articles, dependent: :destroy

  # def articles(sort: nil, limit: nil)
  #   @articles_tmp = Article.where(author_id: id)

  #   return @articles_tmp if sort.nil? && limit.nil?

  #   return @articles_tmp.order(title: sort) if limit.nil?

  #   return limit_article(limit) if sort.nil?

  #   @articles_tmp = @articles_tmp.order(title: sort)

  #   limit_article(limit)
  # end

  # def limit_article(limit)
  #   @articles_tmp.slice(0...limit)
  # end


  #----------------------------------

  # def articles(sort: nil, limit: nil)
  #   Article.where(author_id: id)
  #          .order(Arel.sql("title #{sort} NULLS LAST"))
  #          .limit(limit)
  # end

  #----------------------------------

  def articles(sort: nil, limit: nil)
    Article.where(author_id: id).ordena(sort).limit(limit)
  end
end
