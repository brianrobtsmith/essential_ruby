# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator


def pmt(interest_rate, number_of_payments, present_value)
  interest_rate_monthly = interest_rate/12
  interest_rate_monthly_plus_one = interest_rate_monthly+1
  monthly_payment = present_value*interest_rate_monthly*interest_rate_monthly_plus_one**(number_of_payments)/(interest_rate_monthly_plus_one**number_of_payments-1)
  monthly_payment.round(2)

# The equation for calculating the mortgage payment is as follows
#    - Monthly payment C
#    - interest_rate must be converted into a monthly interest rate
#      -- interest_rate / 12 / 100
#    - Number_of_payments must be converted into months number_of_payments * 12
#    - present_value requires no changes.
#    - The final equation is an equation for an annuity Pr(1+r)^N / (1+r)^N-1

end

puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."
