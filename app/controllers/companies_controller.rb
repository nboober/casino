class CompaniesController < ApplicationController

    before_action :authorized, only: [:index, :show, :edit, :update, :destroy]


    def index
      @companies = Company.all
    end
  
    def new
      @company = Company.new
    end
  
    def create
      @company = Company.create(user_params)
      
    end
  
    def show
      @company = Company.find(params[:id])
    end
  
    def edit
      @company = Company.find(params[:id])
    end
  
    def update
      @company = Company.find(params[:id])
      @company.update(company_params)
  
      redirect_to company_path(@company)
    end
  
    def destroy
      @company = Company.find(params[:id])
      @company.destroy
  
      redirect_to home_path
    end
  
    private
  
    def user_params
      params.require(:user).permit(
        :name, :location)
    end
  end
  
