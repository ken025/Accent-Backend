class BoardPinsController < ApplicationController
  before_action :set_board_pin, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create, :index]

  # GET /board_pins
  def index
    @board_pins = BoardPin.all

    render json: @board_pins
  end

  # GET /board_pins/1
  def show
    render json: @board_pin
  end

  # POST /board_pins
  def create
    @board_pin = BoardPin.new(board_pin_params)

    if @board_pin.save
      render json: @board_pin, status: :created, location: @board_pin
    else
      render json: @board_pin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /board_pins/1
  def update
    if @board_pin.update(board_pin_params)
      render json: @board_pin
    else
      render json: @board_pin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /board_pins/1
  def destroy
    @board_pin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_pin
      @board_pin = BoardPin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def board_pin_params
      params.require(:board_pin).permit(:board_id, :pin_id)
    end
end
