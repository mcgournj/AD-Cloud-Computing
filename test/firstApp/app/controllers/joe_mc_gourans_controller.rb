class JoeMcGouransController < ApplicationController
  # GET /joe_mc_gourans
  # GET /joe_mc_gourans.xml
  def index
    @joe_mc_gourans = JoeMcGouran.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @joe_mc_gourans }
    end
  end

  # GET /joe_mc_gourans/1
  # GET /joe_mc_gourans/1.xml
  def show
    @joe_mc_gouran = JoeMcGouran.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @joe_mc_gouran }
    end
  end

  # GET /joe_mc_gourans/new
  # GET /joe_mc_gourans/new.xml
  def new
    @joe_mc_gouran = JoeMcGouran.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @joe_mc_gouran }
    end
  end

  # GET /joe_mc_gourans/1/edit
  def edit
    @joe_mc_gouran = JoeMcGouran.find(params[:id])
  end

  # POST /joe_mc_gourans
  # POST /joe_mc_gourans.xml
  def create
    @joe_mc_gouran = JoeMcGouran.new(params[:joe_mc_gouran])

    respond_to do |format|
      if @joe_mc_gouran.save
        format.html { redirect_to(@joe_mc_gouran, :notice => 'Joe mc gouran was successfully created.') }
        format.xml  { render :xml => @joe_mc_gouran, :status => :created, :location => @joe_mc_gouran }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @joe_mc_gouran.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /joe_mc_gourans/1
  # PUT /joe_mc_gourans/1.xml
  def update
    @joe_mc_gouran = JoeMcGouran.find(params[:id])

    respond_to do |format|
      if @joe_mc_gouran.update_attributes(params[:joe_mc_gouran])
        format.html { redirect_to(@joe_mc_gouran, :notice => 'Joe mc gouran was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @joe_mc_gouran.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /joe_mc_gourans/1
  # DELETE /joe_mc_gourans/1.xml
  def destroy
    @joe_mc_gouran = JoeMcGouran.find(params[:id])
    @joe_mc_gouran.destroy

    respond_to do |format|
      format.html { redirect_to(joe_mc_gourans_url) }
      format.xml  { head :ok }
    end
  end
end
