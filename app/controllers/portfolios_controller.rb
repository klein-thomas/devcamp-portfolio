class PortfoliosController < ApplicationController
  layout 'portfolio'
  
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
    3.times { @portfolio.technologies.build }
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
end

  def update
    @portfolio = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])

    @portfolio.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was removed.' }
      format.json { head :no_content }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtitle, 
      :body,
      technologies_attributes: [:name]
    )
  end
end
