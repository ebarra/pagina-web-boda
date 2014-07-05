class CreateTemazos < ActiveRecord::Migration
  def change
    create_table :temazos do |t|
      t.string :nombre
      t.string :tema
      t.string :autor

      t.timestamps
    end
  end
end
