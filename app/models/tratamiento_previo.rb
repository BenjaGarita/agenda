class TratamientoPrevio < ActiveRecord::Base
  attr_accessible :circunstancias_consultas, :internamiento, :matricula, :medicacion, :motivo, :otros_servicios, :psicoterapia
end
