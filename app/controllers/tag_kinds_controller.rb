class TagKindsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_tag_kind, only: [:show, :update, :destroy]

  # GET /tag_kinds
  def index
    @tag_kinds = TagKind.all

    render json: @tag_kinds
  end

  # GET /tag_kinds/1
  def show
    render json: @tag_kind
  end

  # POST /tag_kinds
  def create
    @tag_kind = TagKind.new(tag_kind_params)

    if @tag_kind.save
      render json: @tag_kind, status: :created, location: @tag_kind
    else
      render json: @tag_kind.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tag_kinds/1
  def update
    if @tag_kind.update(tag_kind_params)
      render json: @tag_kind
    else
      render json: @tag_kind.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tag_kinds/1
  def destroy
    @tag_kind.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_kind
      @tag_kind = TagKind.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tag_kind_params
      params.require(:tag_kind).permit(:name)
    end
end
