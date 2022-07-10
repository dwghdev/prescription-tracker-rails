class MedicinesController < ApplicationController
  before_action :set_medicine, only: %i[show edit update destroy]
  before_action :set_medicines, only: :index
  before_action :set_new_medicine, only: :index

  def index; end
  def show; end
  def edit; end

  def create
    @medicine = Medicine.new(medicine_params)

    if @medicine.save
      redirect_to @medicine
    else
      render :new
    end
  end

  def update
    if @medicine.update(medicine_params)
      redirect_to @medicine
    else
      render :edit
    end
  end

  def destroy
    @medicine.destroy
    redirect_to medicines_path
  end

  private

  def set_new_medicine
    @medicine = Medicine.new
  end

  def set_medicines
    query = Medicine.ransack(name_cont_any: params[:query])
    @medicines = query.result(distinct: true)
  end

  def set_medicine
    @medicine = Medicine.find(params[:id])
  end

  def medicine_params
    params.require(:medicine).permit(:name, :description, :price)
  end
end
