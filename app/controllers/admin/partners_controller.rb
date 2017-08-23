module Admin
  class PartnersController < ApplicationController
    before_action :set_pagination_params, only: [:index]

    def index
      @partners = Partner.order(id: :desc).page(@page).per(@size)
    end
  end
end