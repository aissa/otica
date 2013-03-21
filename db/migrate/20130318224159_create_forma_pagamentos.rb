class CreateFormaPagamentos < ActiveRecord::Migration
  def change
    create_table :forma_pagamentos do |t|
      t.string :tipo
      t.integer :parcelas

      t.timestamps
    end
  end
end
