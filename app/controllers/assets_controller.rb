class AssetsController < ApplicationController
 before_filter :login_required, :except => [:index, :show]
 
  def index
    @assets = Asset.all
    respond_to do |format|
      format.html
      format.xml { render :xml => @assets }
      format.atom
    end
  end

  def show
    @asset = Asset.find(params[:id])
  end

  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.new(params[:asset])
      respond_to do |format|
        if @asset.save
          format.html { redirect_to(@asset, :notice => 'Asset was successfully created.') }
          format.xml { render :xml => @asset, :status => :created, :location => @asset }
        else
          format.html { render :action => "new" }
          format.xml { render :xml => @asset.errors, :status => :unprocessable_entity }
        end
  end

  def edit
    @asset = Asset.find(params[:id])
  end
  
  def update
    @asset = Asset.find(params[:id])
    if @asset.update_attributes(params[:Asset])
      flash[:notice] = "Successfully updated asset."
      redirect_to @asset
    else
      render :action => 'edit'
    end
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    flash[:notice] = "Successfully destroyed asset."
    redirect_to Asset_url
  end
end
end
