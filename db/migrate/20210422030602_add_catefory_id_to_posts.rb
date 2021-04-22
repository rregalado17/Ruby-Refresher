class AddCateforyIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :catefory, foreign_key: true
  end
end
