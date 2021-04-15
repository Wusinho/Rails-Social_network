class Category < ApplicationRecord
    has_many :articles
    has_many :article_votes, through: :articles, source: :vote

    


end
