class ArtworksController < ApplicationController
    def index
        artwork = Artwork.joins(:artworks_shares).where("artworks.artist_id = #{params[:user_id]} OR artwork_shares.viewer_id = #{params[:user_id]}")
        render json: artwork

    end
    

    def create      
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        artwork = Artwork.find(params[:id])

        unless artwork.nil?
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 404
        end
    end
    

    def destroy
         artwork = Artwork.find(params[:id])

        unless artwork.nil?
            artwork.destroy
        else
            render json: artwork.errors.full_messages, status: 404
        end
    end

    def update
        artwork = Artwork.find(params[:id])

        if artwork.update(artwork_params)
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 404
        end
    end

    private
    
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end