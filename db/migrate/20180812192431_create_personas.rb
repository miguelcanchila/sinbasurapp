class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.integer :TipoPersona
      t.integer :TipoDocumentoId
      t.integer :NumeroIdentificacion
      t.string :Nombre
      t.string :Apellido
      t.string :Correo
      t.integer :Telefono
      t.string :Direccion

      t.timestamps
    end
  end
end
