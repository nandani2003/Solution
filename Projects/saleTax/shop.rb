require './item.rb'
require './salesTax.rb'
require './check.rb'

class Shop
  def initialize
    @items = []
    @totalSalesTax = 0
    @totalPrice = 0
    begin
      File.open('input.rb', 'r') do |file|
        file.readlines.each do |line|
          line.strip!
          items = line.split(", ")
          items.each do |item|
            result = Check.parseLine(item)
            if result
             item =Item.new(result[:quantity],result[:name],result[:price])
             processItem(item)
            else
              puts "Invalid input format: #{item}. give valid input"
              return
            end
          end
        end
      end
      printReceipt
    rescue Errno::ENOENT
      puts "File not found!"
    end
  end

  def processItem(item)
    tax = SaleTax.calculate(item)
    totalPrice = item.price + tax

    @items << { quantity: item.quantity, name: item.name, totalPrice: totalPrice }
    @totalSalesTax += tax
    @totalPrice += totalPrice
  end

  def printReceipt
    @items.each do |item|
      puts "#{item[:quantity]} #{item[:name]}: #{'%.2f' % item[:totalPrice]}"
    end
    puts "Sales Taxes: #{'%.2f' % @totalSalesTax}"
    puts "Total: #{'%.2f' % @totalPrice}"
  end
end

shop = Shop.new


