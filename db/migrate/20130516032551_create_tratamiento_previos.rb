class CreateTratamientoPrevios < ActiveRecord::Migration
  def change
    create_table :tratamiento_previos do |t|
      t.integer :matricula
      t.string:psicoterapia
      t.string :motivo
      t.string :medicacion
      t.string :internamiento
      t.string :otros_servicios
      t.string :circunstancias_consultas

      t.timestamps
    end

  end


end
