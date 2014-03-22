class FoodsController < ApplicationController
  def index
    @pictures = Upload.all
  end
end
