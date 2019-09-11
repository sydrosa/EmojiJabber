class Favorite < ApplicationRecord
    belongs_to :room
    belongs_to :user

    # def favorite(room)
    #     favorites.find_or_create_by()
    # end

    # def unfavorite(room)
    #     favorites.where(article: article).destroy_all
        
    #     article.reload
    # end


end
