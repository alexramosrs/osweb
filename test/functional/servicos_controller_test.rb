require 'test_helper'

class ServicosControllerTest < ActionController::TestCase
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servico" do
    assert_difference('Servico.count') do
      post :create, servico: { contato: @servico.contato, data: @servico.data, descr: @servico.descr, id_cliente: @servico.id_cliente, laudo: @servico.laudo, numHoras: @servico.numHoras, obs: @servico.obs, situacao: @servico.situacao, solucao: @servico.solucao, tecnico: @servico.tecnico, tipo: @servico.tipo, valorHora: @servico.valorHora, valorTotal: @servico.valorTotal }
    end

    assert_redirected_to servico_path(assigns(:servico))
  end

  test "should show servico" do
    get :show, id: @servico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servico
    assert_response :success
  end

  test "should update servico" do
    put :update, id: @servico, servico: { contato: @servico.contato, data: @servico.data, descr: @servico.descr, id_cliente: @servico.id_cliente, laudo: @servico.laudo, numHoras: @servico.numHoras, obs: @servico.obs, situacao: @servico.situacao, solucao: @servico.solucao, tecnico: @servico.tecnico, tipo: @servico.tipo, valorHora: @servico.valorHora, valorTotal: @servico.valorTotal }
    assert_redirected_to servico_path(assigns(:servico))
  end

  test "should destroy servico" do
    assert_difference('Servico.count', -1) do
      delete :destroy, id: @servico
    end

    assert_redirected_to servicos_path
  end
end
