class RootController < ApplicationController
  def index
  end

  def slow
    sleep(10)
    render :action => 'index'
  end
end
