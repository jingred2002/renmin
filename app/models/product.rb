class Product < ActiveRecord::Base
	def one_month_sales
		now = Time.now
		d1 = now.strftime("%Y-%m-%d %H:%M:%S")
		d2 = now.months_ago(1).strftime("%Y-%m-%d %H:%M:%S")
		OrderDetail.where('created_at <= ? and created_at > ? and product_id = ? ', d1, d2, self.id).sum(:product_number)
	end
end
