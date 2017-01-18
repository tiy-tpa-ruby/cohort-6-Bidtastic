module ItemsHelper
  def price_as_dollar_signs(price)
    if price.nil? || price <= 0
      "NA"
    else
      "$" * [price, 5].min
    end
  end
end
