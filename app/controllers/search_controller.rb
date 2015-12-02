class SearchController < ApplicationController

  def index
    if params[:q].blank?
      @results = Elasticsearch::Model.search( { query: { match_all: {} } }, [Place, Person]).page(params[:page]).records
      @all_results = Elasticsearch::Model.search( { query: { match_all: {} } }, [Place, Person]).records
    else
      @results = Elasticsearch::Model.search(params[:q], [Place]).page(params[:page]).records
      @all_results = Elasticsearch::Model.search(params[:q], [Place]).records
    end
    @tags = Tag.all
  end
end
