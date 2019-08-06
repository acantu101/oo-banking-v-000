require 'pry'
class Transfer
  # your code here

attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"

  end

    def valid?
      if  @sender.valid? && @receiver.valid? == true
        return true
      else
        false
      end
    end

    def execute_transaction
      binding.pry

      if @sender.valid? == true && @status = "pending"
        @sender.balance = sender.balance - @amount
        @receiver.balance = receiver.balance + @amount
        @status = "complete"
      else
        return "Transaction rejected. Please check your account balance."
      end
    end

end
