class CreateServicos < ActiveRecord::Migration[7.1]
  def change
    create_table :servicos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.boolean :pago
      t.date :data_servico
      t.date :data_pagamento
      t.integer :tipo
      t.integer :qt_looks
      t.integer :qt_videos
      t.decimal :valor_sessao, precision: 10, scale: 2
      t.decimal :valor_extra, precision: 10, scale: 2
      t.decimal :valor_total, precision: 10, scale: 2
      t.decimal :comissao, precision: 10, scale: 2
      t.decimal :desconto, precision: 3, scale: 2
      t.string :obs

      t.timestamps
    end
  end
end
