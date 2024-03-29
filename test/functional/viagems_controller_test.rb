require 'test_helper'

class ViagemsControllerTest < ActionController::TestCase
  setup do
    @viagem = viagems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viagems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viagem" do
    assert_difference('Viagem.count') do
      post :create, viagem: { data_chegada: @viagem.data_chegada, data_partida: @viagem.data_partida, duracao: @viagem.duracao, itinerario: @viagem.itinerario, link_hostel01: @viagem.link_hostel01, link_hostel02: @viagem.link_hostel02, organizador: @viagem.organizador, preco_esperado: @viagem.preco_esperado, preco_medio: @viagem.preco_medio }
    end

    assert_redirected_to viagem_path(assigns(:viagem))
  end

  test "should show viagem" do
    get :show, id: @viagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @viagem
    assert_response :success
  end

  test "should update viagem" do
    put :update, id: @viagem, viagem: { data_chegada: @viagem.data_chegada, data_partida: @viagem.data_partida, duracao: @viagem.duracao, itinerario: @viagem.itinerario, link_hostel01: @viagem.link_hostel01, link_hostel02: @viagem.link_hostel02, organizador: @viagem.organizador, preco_esperado: @viagem.preco_esperado, preco_medio: @viagem.preco_medio }
    assert_redirected_to viagem_path(assigns(:viagem))
  end

  test "should destroy viagem" do
    assert_difference('Viagem.count', -1) do
      delete :destroy, id: @viagem
    end

    assert_redirected_to viagems_path
  end
end
