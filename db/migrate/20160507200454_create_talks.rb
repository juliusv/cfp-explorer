class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :speaker_name
      t.string :speaker_email
      t.string :speaker_twitter
      t.string :speaker_company
      t.text :speaker_biography
      t.string :talk_title
      t.text :talk_abstract
      t.string :talk_duration
      t.string :notes

      t.timestamps
    end
  end
end
