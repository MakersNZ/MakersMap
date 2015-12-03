class SearchController < ApplicationController

  RESULT_SET = 300

  def index
    if params[:q].blank?
      @results = Elasticsearch::Model.search( { query: { match_all: {} } }, [Place, Person]).page(params[:page]).records
      @all_results = Elasticsearch::Model.search( { query: { match_all: {} }, size: RESULT_SET }, [Place, Person]).records.to_a
    else
      @results = Elasticsearch::Model.search(params[:q], [Place, Person]).page(params[:page]).records
      @all_results = Elasticsearch::Model.search(params[:q], [Place, Person]).records.to_a
    end
    @tags = Tag.all
  end
end
