class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.integer :matricula
      t.string :tema
      t.date :fecha
      t.string :estado
      t.time :hora_de_inicio
      t.time :hora_fin
      t.string :resultado

      t.timestamps
    end
  end
end
