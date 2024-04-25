# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

from_ben = 0 
to_ben = 0 
from_brian = 0 
to_brian = 0 
from_evan = 0 
to_evan = 0 
from_anthony = 0 
to_anthony = 0 

blockchain.each do |transaction|
#Ben's wallet
if transaction["from_user"] == "ben"
  from_ben = from_ben + transaction["amount"]
end 

if transaction["to_user"] == "ben"
  to_ben = to_ben + transaction["amount"]
end 

#Brian's wallet
if transaction["from_user"] == "brian"
  from_brian = from_brian + transaction["amount"]
end 

if transaction["to_user"] == "brian"
  to_brian = to_brian + transaction["amount"]
end 

#Evan's wallet
if transaction["from_user"] == "evan"
  from_evan = from_evan + transaction["amount"]
end 

if transaction["to_user"] == "evan"
  to_evan = to_evan + transaction["amount"]
end 

#Anthony's wallet
if transaction["from_user"] == "anthony"
  from_anthony = from_anthony + transaction["amount"]
end 

if transaction["to_user"] == "anthony"
  to_anthony = to_anthony + transaction["amount"]
end 

end 

  ben_wallet = -from_ben + to_ben
  brian_wallet = -from_brian + to_brian
  evan_wallet = -from_evan + to_evan
  anthony_wallet = -from_anthony + to_anthony

p "Ben's KelloggCoin balance is #{ben_wallet}"
p "Brian's KelloggCoin balance is #{brian_wallet}"
p "Evan's KelloggCoin balance is #{evan_wallet}"
p "Anthony's KelloggCoin balance is #{anthony_wallet}"