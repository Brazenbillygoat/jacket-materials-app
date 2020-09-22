class MaterialsController < ApplicationController

    def index
        @materials = Material.all
    end

    def show
        @material = Material.find(params[:id])
    end

    def new
        @material = Material.new
    end

    def create
        material = Material.new(name: params[:material][:name], color: params[:material][:color])
        material.save
        redirect_to material_path(material)
    end

    def edit
        @material = Material.find(params[:id])
    end

    def update
        material = Material.find(params[:id])
        material.update(name: params[:material][:name], color: params[:material][:color])
        redirect_to material_path(material)
    end

end
