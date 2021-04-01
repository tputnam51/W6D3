class ArtworkSharesController < ApplicationController

    def create      
        artwork_share = ArtworkShare.new(shares_params)
        if artwork_share.save
            render json: artwork_share
        else
            render json: artwork_share.errors.full_messages, status: :unprocessable_entity
        end
    end

     def destroy
         artwork_share = ArtworkShare.find(params[:id])

        unless artwork_share.nil?
            artwork_share.destroy
        else
            render json: artwork_share.errors.full_messages, status: 404
        end
    end

    def shares_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end
end