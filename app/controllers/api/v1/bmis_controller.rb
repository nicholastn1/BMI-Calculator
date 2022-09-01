class Api::V1::BmisController < ApplicationController
  # GET /bmis
  def index
    @bmis = Bmi.all

    render json: @bmis
  end
  
  # POST /bmis
  def create
    
    data_json = JSON.parse request.body.read

    @bmi = Bmi.new(data_json)

    @bmi.bmi_value = @bmi.weight / (@bmi.height * @bmi.height)

    if @bmi.bmi_value.present?
      if @bmi.bmi_value <= 18.5
        @bmi.bmi_category = "Underweight"
      elsif @bmi.bmi_value > 18.5 && @bmi.bmi_value <= 24.9
        @bmi.bmi_category = "Normal"
      elsif @bmi.bmi_value > 24.9 && @bmi.bmi_value <= 29.9
        @bmi.bmi_category = "Overweight"
      elsif @bmi.bmi_value > 29.9
        @bmi.bmi_category = "Obese"
        
        if @bmi.bmi_value >= 30 && @bmi.bmi_value <= 34.9
          @bmi.bmi_obeisity = "I"
        elsif @bmi.bmi_value >= 35 && @bmi.bmi_value <= 39.9
          @bmi.bmi_obeisity = "II"
        elsif @bmi.bmi_value >= 40
          @bmi.bmi_obeisity = "III"
        else
          @bmi.bmi_obeisity = ""
        end
      end
    end

    if @bmi.save
      render json: @bmi
    else
      render json: @bmi.errors, status: :unprocessable_entity
    end
  end
end
