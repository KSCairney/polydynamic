class CreateEndorsements < ActiveRecord::Migration[5.0]
  def change
    create_table :endorsements do |t|
      t.string :name
      t.string :descriptor
      t.text :endorsement_message
      t.boolean :approved

      t.timestamps
    end
  end
end
