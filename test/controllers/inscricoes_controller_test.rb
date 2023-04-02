require 'test_helper'

class InscricoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscrico = inscricoes(:one)
  end

  test "should get index" do
    get inscricoes_url
    assert_response :success
  end

  test "should get new" do
    get new_inscrico_url
    assert_response :success
  end

  test "should create inscrico" do
    assert_difference('Inscricoe.count') do
      post inscricoes_url, params: { inscrico: { cidade: @inscrico.cidade, cpf: @inscrico.cpf, email: @inscrico.email, estado: @inscrico.estado, instituicao: @inscrico.instituicao, nome: @inscrico.nome } }
    end

    assert_redirected_to inscrico_url(Inscricoe.last)
  end

  test "should show inscrico" do
    get inscrico_url(@inscrico)
    assert_response :success
  end

  test "should get edit" do
    get edit_inscrico_url(@inscrico)
    assert_response :success
  end

  test "should update inscrico" do
    patch inscrico_url(@inscrico), params: { inscrico: { cidade: @inscrico.cidade, cpf: @inscrico.cpf, email: @inscrico.email, estado: @inscrico.estado, instituicao: @inscrico.instituicao, nome: @inscrico.nome } }
    assert_redirected_to inscrico_url(@inscrico)
  end

  test "should destroy inscrico" do
    assert_difference('Inscricoe.count', -1) do
      delete inscrico_url(@inscrico)
    end

    assert_redirected_to inscricoes_url
  end
end
