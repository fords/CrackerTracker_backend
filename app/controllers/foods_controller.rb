class FoodsController < OpenReadController
  before_action :set_food, only: [:show,:update, :destroy]
<<<<<<< HEAD
   # :update, :destroy]
=======
   # :update, :destroy]   OpenReadController  ProtectedController
>>>>>>> development

  # GET /foods
  def index
    @foods = current_user.foods.all
    # Food.all
    render json: @foods
  end

  # GET /foods/1
  def show
    render json: @food
  end

  # POST /foods
  def create
<<<<<<< HEAD
    @food = current_user.foods.new(food_params)
=======
    @food = current_user.foods.build(food_params)
>>>>>>> development

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      render json: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
<<<<<<< HEAD
      @food = current_user.foods.find(params[:id])
=======
      @food = current_user.foods.find(params[:id])   #Food destory update is limited to current user authentication
>>>>>>> development
    end

    # Only allow a trusted parameter "white list" through.
    def food_params
      params.require(:food).permit(:name, :breakfast, :lunch, :dinner, :calendar)
      # , :dinner, :calendar
    end
end
