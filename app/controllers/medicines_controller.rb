class MedicinesController < ApplicationController
  before_action :set_medicine, only: %i[show edit update destroy]
  before_action :set_medicines, only: :index

  def index; end
  def show; end
  def edit; end

  def new
    @medicine = Medicine.new
  end

  def create

  end

  private

  def set_medicines
    @medicines = Medicine.all
  end
end
