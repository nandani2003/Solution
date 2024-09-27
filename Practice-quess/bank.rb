  Name="Nandani Verma"
  $amount=0

  module  Transcationable   
      Arr=[] 
      def deposite(amt_depo)
      Arr.push("Deposite:#{amt_depo}")
      $amount+=amt_depo
      puts "Deposit #{amt_depo} total_amt: #{$amount}"
      end 

      def withdraw(amt_withdraw)
      Arr.push("Withdrwal:#{amt_withdraw}")
      $amount-=amt_withdraw
      puts "Withdrwal #{amt_withdraw} total_amt: #{$amount}"      
    end

  module Reportable
    def gen_report
    puts "Current amount : #{$amount}"
    end
  end

  class Bank
      include Reportable
      def account_details
      puts "Account Holder name is #{Name} and #{$amount}"  
        update_balance
        puts transcaction_history
      end
    
      private
      include Transcationable
      def update_balance   
      c2=Bank.new
      c2.deposite(9000)
      c2.withdraw(2000)
      c2.deposite(4000) 
      c2.withdraw(3456)
      c2.withdraw(621)
      c2.deposite(5602)
      end

      protected
      def transcaction_history
      print Arr
      end  
  end
  c1=Bank.new
  c1.account_details
  c1.gen_report
  # c1.deposite(50)
  # c1.withdraw(100)
  # c1.deposite(9000)
  # c1.withdraw(3456)
  # c1.withdraw(621)
  # c1.deposite(5602)
  # print Arr
    end

