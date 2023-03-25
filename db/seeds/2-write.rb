File.write('json/users.json', User.all.to_json)
File.write('json/assets.json', Asset.all.to_json)
File.write('json/transactions.json', Transaction.all.to_json)
File.write('json/investments.json', Investment.all.to_json)