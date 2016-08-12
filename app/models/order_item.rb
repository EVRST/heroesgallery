class OrderItem < ActiveRecord::Base
end

class OrderItem < ActiveRecord::Base
  belongs_to :visual
  belongs_to :order
  belongs_to :dimension

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :visual_present
  validate :order_present

  before_save :finalize

  def unit_price
    price
  end

  def total_price
    unit_price * quantity
  end

  def price
    if finish_id == 2
      dimension.price_plexi
    else
      dimension.price
    end
  end

private
  def visual_present
    if visual.nil?
      errors.add(:visual, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end


end
