class CreateDocumentos < ActiveRecord::Migration[5.2]
  def change
    create_table :documentos do |t|
      t.string :TipoDocumento

      t.timestamps
    end
  end
end
