class SpecializationsController < ApplicationController
  before_action :set_specializations, only: :index

  def index; end
  def show; end

  private
  def set_specializations
    query = Specialization.ransack(name_cont_any: params[:query])
    @specializations = query.result(distinct: true)
  end
end
