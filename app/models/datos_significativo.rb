class DatosSignificativo < ActiveRecord::Base
  attr_accessible :accidentes, :asalto, :cambio_residencia, :carcel, :divorcio, :embarazo, :enfermedades, :matricula, :muertes, :otros, :perdida_de_empleo, :problemas_economicos, :problemas_escolares, :problemas_genericos, :secuestro, :separacion
end
