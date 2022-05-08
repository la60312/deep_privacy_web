class GeneratePatientController < ApplicationController
  before_action :set_id, only: %i[ get_img ]

  def index
    @id = rand(0..4)
  end


  def get_img
    send_file( "Data/#{@id}.png",
               :disposition => 'inline',
               :type => 'image/png',
               :xsend_file => true )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id
      @id = params[:id]
    end
end
