class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :description, nul: false
      t.references :subject, foreign_key: true
 

      t.timestamps
    end
  end
end
