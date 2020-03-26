class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # # render plain: "Hello #{@birds[3].name}"
    # render json: @birds
    # However, we really only needed instance variables when we were rendering to ERB. Now that we are directly rendering to 
    # JSON in the same action, we no longer need to deal with instance variables and can instead just use a local variable:
    # (above is instance variables with the @)
    birds = Bird.all
    render json: birds
    #Local variables
end
end