module EnotasNfe
  module Model
    class Metadados

      include Virtus.model
      require "enotas_nfe/model/cidade_prestacao"

      attribute :cidadeprestacao, CidadePrestacao

    end
  end
end
