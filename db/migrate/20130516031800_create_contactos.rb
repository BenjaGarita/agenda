class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.birary :foto
      t.integer :matricula
      t.string :nombre
      t.string :sexo
      t.string :edad
      t.string :domicilio
      t.string :colonia
      t.string :ciudad
      t.date :fecha_alta
      t.string :telefono
      t.string :Edo_Civil
      t.string :email
      t.string :motivo_consulta

      t.timestamps
    end
  end
end
