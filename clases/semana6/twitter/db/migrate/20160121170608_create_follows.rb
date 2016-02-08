class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|

      t.timestamps null: false     
    end
    add_reference :follows, :target_profile
    add_reference :follows, :source_profile
    add_foreign_key :follows, :profiles, column: :target_profile_id, name: :target_profile_fk
    add_foreign_key :follows, :profiles, column: :source_profile_id, nmae: :source_profile_fk
  end
end
