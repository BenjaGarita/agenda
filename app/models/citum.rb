class Citum < ActiveRecord::Base
  attr_accessible :estado, :fecha, :hora_de_inicio, :hora_fin, :matricula, :resultado, :tema
end
