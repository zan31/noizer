class AccountsController < ApplicationController
    before_action :load_songs, only: :show
    before_action :load_comments, only: :show
    before_action :load_likes, only: :show


    def show
        @user = User.find(params[:id])
        @allcomments = Comment.where(song_id: @songs.ids)
        @alllikes = Like.where(song_id: @songs.ids)
    end

    private 

    def load_songs
        @songs= Song.where(user_id: params[:id])
    end

    def load_comments
        @comments = Comment.where(user_id: params[:id])
    end

    def load_likes
        @likes = Like.where(user_id: params[:id])
    end
    
end
