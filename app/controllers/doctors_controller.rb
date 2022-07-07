class DoctorsController < ApplicationController
  before_action :set_doctors, only: :index
  before_action :set_doctor, only: %i[show edit]
  before_action :set_specializations, only: %i[new edit]
  
  def index; end
  def show; end
  def edit; end

  def new 
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to @doctor
    else 
      render :new
    end
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor
    else
      render :edit
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private

  def set_specializations
    @specializations = Specialization.all
  end

  def set_doctors
    query = Doctor.ransack(firstname_or_lastname_cont_any: params[:query]) 
    @doctors = query.result(distinct: true)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(
      :firstname,
      :lastname,
      :age,
      :gender,
      :phone_no,
      :email,
      :license_no,
      :specialization_id
    )
  end
end
