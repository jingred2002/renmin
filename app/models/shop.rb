class Shop < ActiveRecord::Base
	has_many :products, :class_name => "Product", :dependent => :destroy
	has_many :orders, :class_name => "Order", :dependent => :destroy
	def one_month_orders_count
		now = Time.now
		d1 = now.strftime("%Y-%m-%d %H:%M:%S")
		d2 = now.months_ago(1).strftime("%Y-%m-%d %H:%M:%S")
		Order.where('created_at <= ? and created_at > ? and shop_id = ? ', d1, d2, self.id).count
	end
end
