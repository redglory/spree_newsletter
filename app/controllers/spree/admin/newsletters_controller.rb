module Spree
  module Admin
    class NewslettersController < ResourceController
      def index
        respond_to do |format|
          format.html { Spree::Newsletter.all }
          format.csv { send_data Spree::Newsletter.export_csv, filename: "usuarios_boletin-#{Date.today}.csv" }
        end
      end

      def delete
        Spree::Newsletter.find(params[:id]).destroy
        redirect_to action: 'index'
      end

      def newsletter_params
        params.require(:newsletter).permit(:email)
      end
    end
  end
end
