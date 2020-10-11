class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_record

  def invalid_record
    render json: 'The are missing/invalid parameters', status: :unprocessable_entity
  end
end
