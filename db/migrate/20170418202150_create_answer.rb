class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question, index: true
      t.integer :responder_id
      t.string :answer_name
    end
  end
end
