class ProtfoliosController < ApplicationController

    def index
        @protfolio_items = Protfolio.all
    end

    def angular
      @protfolio_angular_items = Protfolio.angular
    end

    def new
      @protfolio_item = Protfolio.new
      3.times {@protfolio_item.technologies.build}
    end

    def create

        @protfolio_item = Protfolio.new(protfolio_params)
    
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
          if @protfolio_item.update(protfolio_params)
            format.html { redirect_to protfolios_path, notice: "the record was successfully updated." }

          else
            format.html { render :edit, status: :unprocessable_entity }
          end
        end
    end
    def destroy
        @protfolio_item = Protfolio.find(params[:id])
        @protfolio_item.destroy

        respond_to do |format|
          format.html { redirect_to protfolio_url, notice: "Blog was successfully destroyed." }
          format.json { head :no_content }
        end
    end

    def show
   
        @protfolio_item = Protfolio.find(params[:id])



    end

    def protfolio_params
      params.require(:protfolio).permit(:title,
                                        :subtitle, 
                                        :body,
                                        technologies_attributes: [:name])
    end

    

end
