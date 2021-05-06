class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_path, notice: "Added #{favorite.post.user.name}'s post to Favorite'"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to posts_path, notice: "Removed #{favorite.post.user.name}'s post from Favorite'"
  end
end