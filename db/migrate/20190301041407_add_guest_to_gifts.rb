class AddGuestToGifts < ActiveRecord::Migration[5.2]
  def change
    add_reference :gifts, :guest, foreign_key: true
  end
end
