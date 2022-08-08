class AddStripeSubscriptionToUser < ActiveRecord::Migration[7.0]
  def change
    
    add_column :users, :stripe_subscription, :string
    
  end
end
