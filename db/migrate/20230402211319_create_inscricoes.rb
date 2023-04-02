class CreateInscricoes < ActiveRecord::Migration[5.0]
  def change
    create_table :inscricoes do |t|
      t.string :nome
      t.string :email
      t.string :estado
      t.string :cidade
      t.string :instituicao
      t.string :cpf

      t.timestamps
    end
  end
end
