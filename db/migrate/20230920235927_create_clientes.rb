class CreateClientes < ActiveRecord::Migration[7.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.decimal :valor_look, precision: 10, scale: 2
      t.decimal :valor_video, precision: 10, scale: 2
      t.boolean :comissionavel
      t.text :obs

      t.timestamps
    end
  end
end
