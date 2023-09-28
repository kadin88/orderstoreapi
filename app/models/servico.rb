class Servico < ApplicationRecord
  belongs_to :cliente

  enun tipo: {:foto, :provador, :reels, :recebido, :presenca}
end
