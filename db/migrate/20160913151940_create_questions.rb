class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :author, :string
      t.column :title, :string
      t.column :question, :string

      t.timestamps 
    end
  end
end
