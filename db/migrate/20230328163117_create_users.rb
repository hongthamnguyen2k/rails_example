class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, index: { unique: true, name: 'unique_emails' }
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
