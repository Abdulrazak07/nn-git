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

    def edit
        @protfolio_item = Protfolio.find(params[:id])
    end

    

    def update
        @protfolio_item = Protfolio.find(params[:id])
        respond_to do |format|
          if @protfolio_item.update(params.require(:protfolio).permit(:title,:subtitle, :body))
            format.html { redirect_to protfolios_path, notice: "the record was successfully updated." }
            format.json { render :show, status: :ok, location: @blog }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @blog.errors, status: :unprocessable_entity }
          end
        end
    end

    def show
        @protfolio_item = Protfolio.find(params[:id])
        


    end
end
