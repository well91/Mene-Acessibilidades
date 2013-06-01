class AddComentarioToDetalheInspecao < ActiveRecord::Migration
  def change
    add_column :detalhe_inspecoes, :comentario, :string
  end
end
