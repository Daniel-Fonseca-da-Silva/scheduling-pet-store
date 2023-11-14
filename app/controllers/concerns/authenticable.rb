module Authenticable
  private

  def authenticate_with_token
    @token ||= request.headers['Authorization']

    unless valid_token?
      render json: { errors: "You don't have authorization to execute this action!" }, status: :unauthorized
    end
  end

  def valid_token?
    @token.present? && @token.size >= 10
  end
end
