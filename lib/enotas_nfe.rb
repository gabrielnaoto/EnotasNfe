require "virtus"
require "virtus_convert"
require "faraday"
require "faraday_middleware"

require "enotas_nfe/version"
require "enotas_nfe/middleware"
require "enotas_nfe/connection"
require "enotas_nfe/request"
require "enotas_nfe/endpoints"
require "enotas_nfe/model/endereco"
require "enotas_nfe/model/servico"
require "enotas_nfe/model/produto"
require "enotas_nfe/model/cliente"
require "enotas_nfe/model/ambiente_homologacao"
require "enotas_nfe/model/ambiente_producao"
require "enotas_nfe/model/configuracoes_nfse_homologacao"
require "enotas_nfe/model/configuracoes_nfse_producao"
require "enotas_nfe/model/csc"
require "enotas_nfe/model/emissao_nfe_consumidor"
require "enotas_nfe/model/certificado_digital"
require "enotas_nfe/model/empresa"
require "enotas_nfe/model/help_tipo_autenticacao"
require "enotas_nfe/model/regimes_especial_tributacao"
require "enotas_nfe/model/caracteristica_prefeitura"
require "enotas_nfe/model/pagamento"
require "enotas_nfe/model/credenciadora_cartao"
require "enotas_nfe/model/forma_pagamento"
require "enotas_nfe/model/pedido"
require "enotas_nfe/model/nfe_referenciada"
require "enotas_nfe/model/veiculo"
require "enotas_nfe/model/volume"
require "enotas_nfe/model/endereco_entrega"
require "enotas_nfe/model/transportadora"
require "enotas_nfe/model/frete"
require "enotas_nfe/model/transporte"
require "enotas_nfe/model/valor_imposto"
require "enotas_nfe/model/nfe"
require "enotas_nfe/model/carta_correcao"
require "enotas_nfe/model/cofins"
require "enotas_nfe/model/icms"
require "enotas_nfe/model/cide"
require "enotas_nfe/model/combustivel"
require "enotas_nfe/model/impostos"
require "enotas_nfe/model/issqn"
require "enotas_nfe/model/pis"
require "enotas_nfe/facades"
require "enotas_nfe/client"

module EnotasNfe
  def self.logger
    @@logger ||= defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
  end

  def self.logger=(logger)
    @@logger = logger
  end
end
