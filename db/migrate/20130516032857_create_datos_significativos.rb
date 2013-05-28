class CreateDatosSignificativos < ActiveRecord::Migration
  def change
    create_table :datos_significativos do |t|
      t.integer :matricula
      t.string :cambio_residencia
      t.string :accidentes
      t.string :muertes
      t.string :separacion
      t.string :divorcio
      t.string :problemas_escolares
      t.string :perdida_de_empleo
      t.string :enfermedades
      t.string :problemas_economicos
      t.string :asalto
      t.string :secuestro
      t.string :carcel
      t.string :problemas_genericos
      t.string :embarazo
      t.string :otros

      t.timestamps
    end
  end
end
