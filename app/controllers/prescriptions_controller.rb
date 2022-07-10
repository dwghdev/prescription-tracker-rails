class PrescriptionsController < ApplicationController
  before_action :set_prescriptions, only: :index
  before_action :set_medicines, only: %i[new edit]
  before_action :set_prescription, only: %i[show edit]
  before_action :set_doctor, except: :show_all

  def index
    @prescriptions = @doctor.prescriptions
  end

  def edit; end
  def show
    @prescription_medicines = @prescription.prescription_medicines
  end

  def show_all
  end

  def new
    @prescription = Prescription.new
    @prescription.build_prescription_medicine
  end

  def create
    @prescription = @doctor.prescriptions.build(prescription_params)
    
    if @prescription.save
      redirect_to doctor_prescriptions_path(@doctor)
    else
      render :new
    end
  end

  def update
    if @prescription.update(prescription_params)
      redirect_to @prescription
    else
      render :edit
    end
  end

  def destroy
    @prescription.destroy
    redirect_to prescriptions_path
  end

  private

  def set_prescriptions
    @prescriptions = Prescription.all
  end

  def set_prescription
    @prescription = Prescription.find(params[:id])
  end

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def set_medicines
    @medicines = Medicine.all
  end

  def prescription_params
    params.require(:prescription).permit(
      :date, 
      :content, 
      :total_cost, 
      :doctor_id,
      prescription_medicines_attributes: :medicine_id
    )
  end
end
