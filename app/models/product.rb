class Product < ActiveRecord::Base

shop_url = "https://5f949a382618ef54ad10606cb2fc952e:17953c4f69fb983105697c033a5889fd@illuminationtheory.myshopify.com/admin/products.json"
ShopifyAPI::Base.site = shop_url

validates :title, :description, :image_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates :image_url, allow_blank: true, format: {
with: %r{\.(gif|jpg|png)\z}i,
message: 'must be a URL for GIF, JPG or PNG image.'
}
end