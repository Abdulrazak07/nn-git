class ProtfoliosController < ApplicationController
    def index
        @protfolio_items = Protfolio.all
    end

    def new
      @protfolio_item = Protfolio.new
    end

    def create

        @protfolio_item = Protfolio.new(params.require(:protfolio).permit(:title,:subtitle, :body))
    
          if @protfolio_item.save
            redirect_to protfolios_path
            # format.html { redirect_to protfolios_path, notice: "protfolio was successfully created." }
            # format.json { render :show, status: :created, location: @profolio }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @protfolio_items.errors, status: :unprocessable_entity }
          end
    end
end