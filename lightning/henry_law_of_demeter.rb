
#Law of Demeter
# More formally, the Law of Demeter for
# functions requires that a method M of
# an object O may only invoke the methods
# of the following kinds of objects:

#    1. O itself
#    2. M's parameters
#    3. any objects created/instantiated within M
#    4. O's direct component objects
#    5. A global variable, accessible by O, in the scope of m

# In particular, an object should avoid invoking
# methods of a member object returned by another method.

# Each unit should have only limited knowledge about other units:
# only units "closely" related to the current unit. Or: Each unit
# should only talk to its friends; Don’t talk to strangers.


class Wallet
  attr_accessor :cash
end

class Customer
  has_one :wallet
end

class Paperboy
  def collect_money(customer, due_amount)
    if customer.wallet.cash < due_ammount
      raise InsufficientFundsError
    else
      customer.wallet.cash -= due_amount
      @collected_amount += due_amount
    end
  end
end

# Hopefully apparent from this example is that a paperboy should not be taking cash
# out of a customer's wallet. This is a clear Law of Demeter violation. Going back
# to the simple way to recognize this mistake, we can see two dots in
# "customer.wallet.cash". Here is how this might change with attribute delegation.


class Wallet
  attr_accessor :cash
  def withdraw(amount)
     raise InsufficientFundsError if amount > cash
     cash -= amount
     amount
  end
end
class Customer
  has_one :wallet
  # behavior delegation
  def pay(amount)
    @wallet.withdraw(amount)
  end
end
class Paperboy
  def collect_money(customer, due_amount)
    @collected_amount += customer.pay(due_amount)
  end
end

# Again, the change is simple, but our OO-ness and class responsibilities are
# much better. Notice the way delegation is done now. The pay method on customer
# simply delegates to the withdraw method on the wallet. Even with the argument on
# the pay method, this could also be implemented by using Forwardable.









# http://www.dan-manges.com/blog/37
