class PagesController < ApplicationController
  before_action :set_doctors, only: :home

  def home; end

  private

  def set_doctors
    @doctors = Doctor.all
  end
end
