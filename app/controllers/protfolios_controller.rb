class ProtfoliosController < ApplicationController
    def index
        @portfolio_items = Protfolio.all
    end


end
