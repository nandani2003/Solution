module SaleTax
  BASICTAX = 0.10
  IMPORTTAX = 0.05

  def self.roundOff(amount)
    # (amount * 20).ceil / 20.0
    (amount * 0.20).round(2)*5
  end

  def self.calculate(item)
    taxRate = 0.0
    exemptItems = ["book", "chocolate", "pills"]

    if !exemptItems.any? { |exemptItem| item.name.downcase.include?(exemptItem) }
    taxRate += BASICTAX
     end
  
    if item.name.downcase.include?("imported")
    taxRate += IMPORTTAX
    end
    totalTax = (taxRate*item.price ).round(2)
    roundedTax = roundOff(totalTax) 
    roundedTax
  end
end
