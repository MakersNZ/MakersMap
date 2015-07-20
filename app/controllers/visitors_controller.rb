class VisitorsController < ApplicationController

  def index
    @tags = Tag.all
  end
end
