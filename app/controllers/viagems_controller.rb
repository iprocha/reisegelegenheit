class ViagemsController < ApplicationController
 before_filter :authenticate_user!
  # GET /viagems
  # GET /viagems.json
  def index
    @viagems = Viagem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @viagems }
    end
  end

  # GET /viagems/1
  # GET /viagems/1.json
  def show
    @viagem = Viagem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @viagem }
    end
  end

  # GET /viagems/new
  # GET /viagems/new.json
  def new
    @viagem = Viagem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @viagem }
    end
  end

  # GET /viagems/1/edit
  def edit
    @viagem = Viagem.find(params[:id])
  end

  # POST /viagems
  # POST /viagems.json
  def create
    @viagem = Viagem.new(params[:viagem])

    @viagem.organizador = User.find(current_user).profile.name
    #Validation of dates.Check if departure date is not later than arrive.
    if @viagem.data_chegada!= nil && @viagem.data_partida!= nil && @viagem.preco_esperado!= nil
      @viagem.duracao = @viagem.data_chegada - @viagem.data_partida
      if @viagem.duracao == 0
        @viagem.preco_medio = @viagem.preco_esperado
      else
        @viagem.preco_medio = @viagem.preco_esperado/@viagem.duracao
      end
      
    end


    respond_to do |format|
      if @viagem.save
        format.html { redirect_to @viagem, notice: 'Viagem was successfully created.' }
        format.json { render json: @viagem, status: :created, location: @viagem }
      else
        format.html { render action: "new" }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /viagems/1
  # PUT /viagems/1.json
  def update
    @viagem = Viagem.find(params[:id])
  

    respond_to do |format|
      if @viagem.update_attributes(params[:viagem])
        if @viagem.data_chegada!= nil && @viagem.data_partida!= nil && @viagem.preco_esperado!= nil
          @viagem.duracao = @viagem.data_chegada - @viagem.data_partida
          if @viagem.duracao == 0
            @viagem.preco_medio = @viagem.preco_esperado
          else
            @viagem.preco_medio = @viagem.preco_esperado/@viagem.duracao
          end
          @viagem.save
        end
        format.html { redirect_to @viagem, notice: 'Viagem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viagems/1
  # DELETE /viagems/1.json
  def destroy
    @viagem = Viagem.find(params[:id])
    @viagem.destroy

    respond_to do |format|
      format.html { redirect_to viagems_url }
      format.json { head :no_content }
    end
  end
end
