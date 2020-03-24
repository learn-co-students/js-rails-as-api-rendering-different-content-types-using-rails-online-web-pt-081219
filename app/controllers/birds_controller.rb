class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render json: { messgae: 'Hashes of data will get converted to JSON'}
    # render json: [ 'As', 'well', 'as', 'arrays']
    render json: { birds: @birds, message: ['Hello Birds', 'GoodbyeBirds'] }.to_json
  end
end
