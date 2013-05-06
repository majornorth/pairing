class QuotesController < ApplicationController
  def index
    @quotes = Quote.order("created_at DESC")
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote]) 
    @quote.save
    redirect_to quotes_path
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    @quote.update_attributes(params[:quote])
    redirect_to quotes_path
  end

  def destroy
    Quote.find(params[:id]).destroy
    redirect_to quotes_path
  end
end
