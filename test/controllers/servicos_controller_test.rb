require "test_helper"

class ServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get servicos_url, as: :json
    assert_response :success
  end

  test "should create servico" do
    assert_difference("Servico.count") do
      post servicos_url, params: { servico: { cliente_id: @servico.cliente_id, comissao: @servico.comissao, data_pagamento: @servico.data_pagamento, data_servico: @servico.data_servico, desconto: @servico.desconto, obs: @servico.obs, pago: @servico.pago, qt_looks: @servico.qt_looks, qt_videos: @servico.qt_videos, tipo: @servico.tipo, valor_extra: @servico.valor_extra, valor_sessao: @servico.valor_sessao, valor_total: @servico.valor_total } }, as: :json
    end

    assert_response :created
  end

  test "should show servico" do
    get servico_url(@servico), as: :json
    assert_response :success
  end

  test "should update servico" do
    patch servico_url(@servico), params: { servico: { cliente_id: @servico.cliente_id, comissao: @servico.comissao, data_pagamento: @servico.data_pagamento, data_servico: @servico.data_servico, desconto: @servico.desconto, obs: @servico.obs, pago: @servico.pago, qt_looks: @servico.qt_looks, qt_videos: @servico.qt_videos, tipo: @servico.tipo, valor_extra: @servico.valor_extra, valor_sessao: @servico.valor_sessao, valor_total: @servico.valor_total } }, as: :json
    assert_response :success
  end

  test "should destroy servico" do
    assert_difference("Servico.count", -1) do
      delete servico_url(@servico), as: :json
    end

    assert_response :no_content
  end
end
