module Spree
  module Admin
		class NewslettersController < ResourceController
			def index
				@newsletters = Spree::Newsletter.all
		 	end

			def delete
				Spree::Newsletter.find(params[:id]).destroy
				redirect_to :action => 'index'
			end

			def newsletter_params
				params.require(:newsletter).permit(:email)
			end
    end
  end
end