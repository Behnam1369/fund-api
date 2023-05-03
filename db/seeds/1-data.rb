# functions 

def total_equity
  (User.all.sum(:investment) + User.all.sum(:calculated_profit) + User.all.sum(:pending_profit)).round()
end

def total_assets
  Asset.all.sum(:amount).round()
end

def total_investments
  Investment.sum(:amount).round()
end

def total_transactions
  Transaction.sum(:amount).round()
end

def cash
  (total_investments - total_transactions).round()
end

def thousandSeprator(number)
  number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

def print_log(shamsi_date)
  puts "Date: #{shamsi_date}"
  puts "Total Equity: #{thousandSeprator(total_equity)}"
  puts "Total Assets: #{thousandSeprator(total_assets)}"
  puts "Cash: #{thousandSeprator(cash)}"
  puts "---------------------------------"
end


# Users
puts 'Defining users ...'

behnam = User.create(email:'b@y.com', full_name: 'بهنام آقاعلی', password: '123456')
behnam_shakhes = User.create(email:'b2@y.com', full_name: 'بهنام آقاعلی - شاخص', password: '123456')
naghmeh = User.create(email:'a2@b.c', full_name: 'نغمه قزلباش', password: '123456')
masoumeh = User.create(email:'a3@b.c', full_name: 'معصومه قزلباش', password: '123456')
maman_bozorg = User.create(email:'a4@b.c', full_name: 'مامان بزرگ', password: '123456')
jalal = User.create(email:'a5@b.c', full_name: 'جلال قزلباش', password: '123456')
amir_arsalan = User.create(email:'a6@b.c', full_name: 'امیر ارسلان', password: '123456')
noushin = User.create(email:'a7@b.c', full_name: 'نوشین رازانی', password: '123456')
arian = User.create(email:'a20@b.c', full_name: 'آرین رازانی', password: '123456')
mahdi = User.create(email:'a8@b.c', full_name: 'مهدی آقاعلی', password: '123456')
amir_hosein = User.create(email:'a9@b.c', full_name: 'امیرحسین قزلباش', password: '123456')
mahta = User.create(email:'a10@b.c', full_name: 'مهتا قزلباش', password: '123456')
mahroo = User.create(email:'a11@b.c', full_name: 'مهرو قزلباش', password: '123456')
ava = User.create(email:'a12@b.c', full_name: 'آوا قزلباش', password: '123456')
hana = User.create(email:'a13@b.c', full_name: 'هانا قزلباش', password: '123456')
massi = User.create(email:'a14@b.c', full_name: 'معصومه دارابی', password: '123456')
somayeh_kh = User.create(email:'a15@b.c', full_name: 'سمیه خیری', password: '123456')
elaheh = User.create(email:'a16@b.c', full_name: 'الهه شاهواروق', password: '123456')
somayeh_gh = User.create(email:'a17@b.c', full_name: 'سمیه قزلباش', password: '123456')
selena = User.create(email:'a21@b.c', full_name: 'سلنا محرمی', password: '123456')
amir_ebrahim = User.create(email:'a18@b.c', full_name: 'امیر ابراهیم حضرتیان', password: '123456')
sara = User.create(email:'a19@b.c', full_name: 'سارا حضرتیان', password: '123456')
sedigheh = User.create(email:'a22@b.c', full_name: 'صدیقه قزلباش', password: '123456')
shahram = User.create(email:'a23@b.c', full_name: 'شهرام گودرزی', password: '123456')
zhynura = User.create(email:'a24@b.c', full_name: 'ژینورا', password: '123456')

# Assets
puts 'Defining assets ...'

khavar = Asset.create(title: 'خاور')
pelask = Asset.create(title: 'پلاسک')
kerman = Asset.create(title: 'کرمان')
dey = Asset.create(title: 'دی')
dana = Asset.create(title: 'دانا')
energy3 = Asset.create(title: 'انرژی 3')
deloghma = Asset.create(title: 'دلقما')
ghegol = Asset.create(title: 'غگل')
kegol = Asset.create(title: 'کگل')


# Operations
puts 'Adding Operations ... '

Investment.create(amount: 9_517_652, date: '2022-03-21', user: behnam)
Investment.create(amount: 10_000_000, date: '2022-03-21', user: behnam_shakhes)
Investment.create(amount: 389_805_972, date: '2022-03-21', user: naghmeh)
Investment.create(amount: 21_046_357, date: '2022-03-21', user: masoumeh)
Investment.create(amount: 78_022_364, date: '2022-03-21', user: maman_bozorg)
Investment.create(amount: 18_744_420, date: '2022-03-21', user: jalal)
Investment.create(amount: 59_808_356, date: '2022-03-21', user: amir_arsalan)
Investment.create(amount: 21_189_614, date: '2022-03-21', user: noushin)
Investment.create(amount: 77_82_565,  date: '2022-03-21', user: mahdi)
Investment.create(amount: 21_701_721, date: '2022-03-21', user: amir_hosein)
Investment.create(amount: 20_563_855, date: '2022-03-21', user: mahta)
Investment.create(amount: 38_912_833, date: '2022-03-21', user: mahroo)
Investment.create(amount: 53_691_081, date: '2022-03-21', user: ava)
Investment.create(amount: 38_912_842, date: '2022-03-21', user: hana)
Investment.create(amount: 16_755_219, date: '2022-03-21', user: massi)
Investment.create(amount: 97_305_515, date: '2022-03-21', user: somayeh_kh)
Investment.create(amount: 16_755_219, date: '2022-03-21', user: elaheh)
Investment.create(amount: 16_755_219, date: '2022-03-21', user: somayeh_gh)
Investment.create(amount: 32_445_587, date: '2022-03-21', user: amir_ebrahim)
Investment.create(amount: 32_445_587, date: '2022-03-21', user: sara)

Transaction.create(asset: khavar, qty: 536_696, amount: 666_286_616, date: '2022-03-21')
Transaction.create(asset: pelask, qty: 107_126, amount: 335_875_362, date: '2022-03-21')
Transaction.create(asset: khavar, qty: -536_696, amount: -999_045_436, date: '2022-04-27')

# Ordibehesht 12
Rate.create(asset: khavar, price: 1863, date: '2022-05-02')
Rate.create(asset: pelask, price: 3262, date: '2022-05-02')
Investment.create(amount: -70_000_000, date: '2022-05-02', user: naghmeh)

# Ordibehesht 28
Transaction.create(asset: khavar, qty: 547_740, amount: 928_828_599, date: '2022-05-18')

# Shahrivar 6
Transaction.create(asset: khavar, qty: -547_740, amount: -1_103_756_152, date: '2022-08-28')
Transaction.create(asset: kerman, qty: 1_312_364, amount: 1_103_755_304, date: '2022-08-28')

# Aban 4
Rate.create(asset: pelask, price: 2784, date: '2022-11-05')
Rate.create(asset: kerman, price: 657, date: '2022-11-05')

print_log('1401/08/04')

# Aban 14
Transaction.create(asset: pelask, qty: -60_000, amount: -165_688_992, date: '2022-11-05')

# واریز 15 میلیون تومان به حساب علیرضا قزلباش
Investment.create(amount: -20_145_120, date: '2022-11-07', user: massi)
Investment.create(amount: -24_724_316, date: '2022-11-07', user: mahta)
Investment.create(amount: -46_785_643, date: '2022-11-07', user: mahroo)
Investment.create(amount: -58_344_920, date: '2022-11-07', user: amir_arsalan)
Investment.create(amount: -15_906_678, date: '2022-11-07', user: behnam)

print_log('1401/08/14')

#Azar 19
Rate.create(asset: pelask, price: 3508, date: '2022-12-10')
Rate.create(asset: kerman, price: 808, date: '2022-12-10')

Investment.create(amount: -24_960_027, date: '2022-12-10', user: somayeh_gh)
Investment.create(amount: 24_960_027, date: '2022-12-10', user: behnam)

print_log('1401/09/18')

#Dey 23
Rate.create(asset: pelask, price: 4413, date: '2023-01-13')
Rate.create(asset: kerman, price: 1103, date: '2023-01-13')

print_log('1401/10/23')

#Dey 27
Rate.create(asset: pelask, price: 4625, date: '2023-01-17')
Rate.create(asset: kerman, price: 1160, date: '2023-01-17')

Investment.create(amount: 5_000_000, date: '2023-01-17', user: masoumeh)

print_log('1401/10/27')

#Dey 28
Rate.create(asset: pelask, price: 4512, date: '2023-01-17')
Rate.create(asset: kerman, price: 1210, date: '2023-01-17')

Investment.create(amount: 6_000_000, date: '2023-01-18', user: arian)
Investment.create(amount: 26_251_731, date: '2023-01-18', user: behnam)

print_log('1401/10/28')

# Bahman 3
Transaction.create(asset: dey, qty: 41_987, amount: 37_251_312, date: '2023-01-23')

print_log('1401/11/03')

# Bahman 10
Rate.create(asset: pelask, price: 3629, date: '2023-01-30')
Rate.create(asset: kerman, price: 1269, date: '2023-01-30')
Rate.create(asset: dey, price: 856, date: '2023-01-30')
Investment.create(amount: 36_000_000, date: '2023-01-30', user: zhynura)
Transaction.create(asset: dey, qty: 41_516, amount: 36_000_100, date: '2023-01-30')

print_log('1401/11/10')

# Esfand 22
Rate.create(asset: pelask, price: 4128, date: '2023-01-17')
Rate.create(asset: kerman, price: 1140, date: '2023-01-17')

Investment.create(amount: 3_000_000, date: '2023-03-13', user: mahdi)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: noushin)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: amir_hosein)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: naghmeh)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: arian)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: mahta)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: ava)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: hana)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: mahroo)
Investment.create(amount: 3_000_000, date: '2023-03-13', user: selena)
Investment.create(amount: 10_000_000, date: '2023-03-13', user: sedigheh)
Investment.create(amount: 10_000_000, date: '2023-03-13', user: somayeh_kh)

Transaction.create(asset: dey, qty: 61_203, amount: 50_000_173, date: '2023-03-13')

print_log('1401/12/11')

# Esfand 28
Rate.create(asset: pelask, price: 4511, date: '2023-03-19')
Rate.create(asset: kerman, price: 1236, date: '2023-03-19')
Rate.create(asset: dey, price: 889, date: '2023-03-19')

print_log('1401/12/28')

# Farvardin 5
Rate.create(asset: pelask, price: 4500, date: '2023-03-25')
Rate.create(asset: kerman, price: 1327, date: '2023-03-25')
Rate.create(asset: dey, price: 935, date: '2023-03-25')
Investment.create(amount: 200_000_000, date: '2023-03-25', user: somayeh_kh)
Transaction.create(asset: dana, qty: 65_054, amount: 200_000_053, date: '2023-03-25')

print_log('1402/01/05')

# Farvardin 16
Rate.create(asset: pelask, price: 5571, date: '2023-04-05')
Rate.create(asset: kerman, price: 1466, date: '2023-04-05')
Rate.create(asset: dey, price: 1119, date: '2023-04-05')
Rate.create(asset: dana, price: 3470, date: '2023-04-05')

print_log('1402/01/16')


# Farvardin 21
Transaction.create(asset: dana, qty: -65_054, amount: -263_278_065, date: '2023-04-10')
Rate.create(asset: pelask, price: 5970, date: '2023-04-10')
Rate.create(asset: kerman, price: 1535, date: '2023-04-10')
Rate.create(asset: dey, price: 1137, date: '2023-04-10')
Investment.create(amount: -54_958_362, date: '2023-04-10', user: amir_hosein)
Investment.create(amount: -208_319_817, date: '2023-04-10', user: naghmeh)

print_log('1402/01/21')

# Farvardin 26
Rate.create(asset: pelask, price: 6100, date: '2023-04-15')
Rate.create(asset: kerman, price: 1605, date: '2023-04-15')
Rate.create(asset: dey, price: 1148, date: '2023-04-15')

print_log('1402/01/26')

# Farvardin 28 
Rate.create(asset: pelask, price: 6700, date: '2023-04-17')
Rate.create(asset: kerman, price: 1752, date: '2023-04-17')
Rate.create(asset: dey, price: 1244, date: '2023-04-17')
Investment.create(amount: 20_000_000, date: '2023-04-17', user:shahram )
Transaction.create(asset: energy3, qty: 315, amount: 19_953_442, date: '2023-04-17')

print_log('1402/01/28')

# Farvardin 29
Transaction.create(asset: energy3, qty: -315, amount: -20_552_945, date: '2023-04-18')
Rate.create(asset: pelask, price: 6700, date: '2023-04-18')
Rate.create(asset: kerman, price: 1745, date: '2023-04-18')
Rate.create(asset: dey, price: 1306, date: '2023-04-18')
Investment.create(amount: 30_000_000, date: '2023-04-18', user:shahram )
Transaction.create(asset: deloghma, qty: 12_940, amount: 50_596_904, date: '2023-04-18')

print_log('1402/01/29')


# Ordibehesht 4
Rate.create(asset: pelask, price: 6700, date: '2023-04-24')
Rate.create(asset: kerman, price: 1747, date: '2023-04-24')
Rate.create(asset: dey, price: 1368, date: '2023-04-24')
Rate.create(asset: deloghma, price: 3810, date: '2023-04-24')
Investment.create(amount: 15_000_000, date: '2023-04-24', user:selena )
Investment.create(amount: 8_000_000, date: '2023-04-24', user:arian )
Transaction.create(asset: deloghma, qty: 3_970, amount: 14_994_562, date: '2023-04-24')

print_log('1402/02/04')


# Ordibehesht 9
Rate.create(asset: pelask, price: 6580, date: '2023-04-29')
Rate.create(asset: kerman, price: 1767, date: '2023-04-29')
Rate.create(asset: dey, price: 1544, date: '2023-04-29')
Rate.create(asset: deloghma, price: 4050, date: '2023-04-29')
Investment.create(amount: 32_000_000, date: '2023-04-29', user: zhynura)
Investment.create(amount: 30_634_782, date: '2023-04-29', user:naghmeh )
Investment.create(amount: 177_004_232, date: '2023-04-29', user:shahram )
Transaction.create(asset: kegol, qty: 5_039, amount: 40_006_435, date: '2023-04-29')
Transaction.create(asset: ghegol, qty: 37_520, amount: 207_639_014, date: '2023-04-29')
Rate.create(asset: kegol, price: 7890, date: '2023-04-29')
Rate.create(asset: ghegol, price: 5580, date: '2023-04-29')

print_log('1402/02/09')


# Ordibehesht 10

Rate.create(asset: pelask, price: 6900, date: '2023-04-30')
Rate.create(asset: kerman, price: 1799, date: '2023-04-30')
Rate.create(asset: dey, price: 1621, date: '2023-04-30')
Rate.create(asset: deloghma, price: 4252, date: '2023-04-30')
Rate.create(asset: kegol, price: 7860, date: '2023-04-30')
Rate.create(asset: ghegol, price: 5500, date: '2023-04-30')
Investment.create(amount: 5_000_000, date: '2023-04-30', user: noushin)

print_log('1402/02/10')

# Ordibehesht 11

Rate.create(asset: pelask, price: 7230, date: '2023-05-01')
Rate.create(asset: kerman, price: 1789, date: '2023-05-01')
Rate.create(asset: dey, price: 1702, date: '2023-05-01')
Rate.create(asset: deloghma, price: 4076, date: '2023-05-01')
Rate.create(asset: kegol, price: 7720, date: '2023-05-01')
Rate.create(asset: ghegol, price: 5550, date: '2023-05-01')

print_log('1402/02/11')


# Ordibehesht 13

Transaction.create(asset: dey, qty: -144_706, amount: -268_936_111, date: '2023-05-03')
Rate.create(asset: pelask, price: 7500, date: '2023-05-03')
Rate.create(asset: kerman, price: 2004, date: '2023-05-03')
Rate.create(asset: deloghma, price: 4071, date: '2023-05-03')
Rate.create(asset: kegol, price: 7640, date: '2023-05-03')
Rate.create(asset: ghegol, price: 5790, date: '2023-05-03')
Investment.create(amount: -273_937_692, date: '2023-04-30', user: naghmeh)

print_log('1402/02/13')