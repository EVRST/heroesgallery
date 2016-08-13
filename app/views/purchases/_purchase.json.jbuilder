json.extract! purchase, :id, :order_item_id, :buyer_id, :visual_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)