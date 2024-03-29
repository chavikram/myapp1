class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :uid
      t.string :provider
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
