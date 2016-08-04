class Admin::DynamicAdsController < ApplicationController

  before_filter :ensure_is_admin

  def index
    @ads = DynamicAd.all.paginate(page: params[:page], per_page: 10)
  end

  def new
    @dynamin_ad = DynamicAd.new
  end

  def create
    @dynamic_ad = DynamicAd.new(dynamiv_ads_params)
    if @dynamic_ad.save
      redirect_to admin_dynamic_ads_path
    else
      render :action => :new
    end
  end

  def edit
    @dynamin_ad = DynamicAd.find(params[:id])
  end

  def update
    @dynamin_ad = DynamicAd.find(params[:id])
    if @dynamin_ad.update_attributes(dynamiv_ads_params)
      redirect_to admin_dynamic_ads_path
    else
      flash[:error] = "Ad saving failed"
      render :action => :edit
    end
  end

  # Remove action
  def destroy
    @dynamic_ad = DynamicAd.find(params[:id])
    @dynamic_ad.destroy
    redirect_to admin_dynamic_ads_path
  end

  
  private

  def dynamiv_ads_params
    params.require(:dynamic_ad).permit(:title, :link, :image)
  end

end
