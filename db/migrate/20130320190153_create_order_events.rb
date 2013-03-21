class CreateOrderEvents < ActiveRecord::Migration
  def change
    create_table :order_events do |t|
      t.string :num_version,
      t.string :nam_event_description,
      t.string :nam_ip,
      t.string :nam_event,
      t.string :nam_ticket,
      t.string :venda_id

      t.timestamps
    end
  end
end
