class BlogsController < ApplicationController
	
	def home
	end
	def show
	end
	def insert
		@product = Product.new
		@category_list=Category.order(:category_name)
	end
	def create
		if !params[:product].nil?
			@product = Product.new()
=begin			@product.product_name= product_params[:product_name]
			@product.product_price=product_params[:product_price]
			s=Seller.find(1)
			s.products<<@product
			@product.save
=end			
			product_params["subcategory_id"].each do |n|
				if(n!="")
					subcategory=Subcategory.find(n)
					#@product.categories<<category
					#category.save
					puts(subcategory.subcat_name)
				end
			end
		end
=begin	
      		@product.product_name= product_params[:product_name]
			@product.product_price=product_params[:product_price]
			s=Seller.find(1)
			s.products<<@product
			@product.save
			category=Category.find(product_params[:category_id])
			@product.categories<<category
			category.save
			render blogs_insert_path
=end      
 		 	
		
	end
private
def product_params
	params.require(:product).permit(:product_name, :product_price, subcategory_id:[])
end
end
=begin
#sample=product_params[category_id:[]]
	#s=Student.new(student_params)
      #s.save
      		puts(params[:student][:name])
      		if(params[:student][:name]=="jithu")
      			@error="FFFFFFf"
      			print("hello")
      			render blogs_insert_path
      		else
      			@error="fail"
      #@s=Student.find(2)
      #print("\n #{@s.name} \n")
      			render blogs_insert_path
	
=end