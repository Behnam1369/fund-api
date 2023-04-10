# Users
puts 'Defining users ...'

behnam = User.create(email:'b@y.com', full_name: 'بهنام آقاعلی', password: '123456')
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

# Assets
puts 'Defining assets ...'

khavar = Asset.create(title: 'خاور')
pelask = Asset.create(title: 'پلاسک')
kerman = Asset.create(title: 'کرمان')
dey = Asset.create(title: 'دی')
dana = Asset.create(title: 'دانا')


# Operations
puts 'Adding Operations ... '

Investment.create(amount: 19_517_652, date: '2022-03-21', user: behnam)
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
Rate.create(asset: khavar, price: 1863, date: '2022-05-17')
Rate.create(asset: pelask, price: 3262, date: '2022-05-17')
Investment.create(amount: -70_000_000, date: '2022-05-02', user: naghmeh)

# Ordibehesht 28
Transaction.create(asset: khavar, qty: 547_740, amount: 928_828_599, date: '2022-05-18')

# Shahrivar 6
Transaction.create(asset: khavar, qty: -547_740, amount: -1_103_756_152, date: '2022-08-28')
Transaction.create(asset: kerman, qty: 1_312_364, amount: 1_103_755_304, date: '2022-08-28')

# Aban 4
Rate.create(asset: pelask, price: 2784, date: '2022-11-05')
Rate.create(asset: kerman, price: 657, date: '2022-11-05')

# Aban 14
Transaction.create(asset: pelask, qty: -60_000, amount: -165_688_992, date: '2022-11-05')

# واریز 15 میلیون تومان به حساب علیرضا قزلباش
Investment.create(amount: -20_145_120, date: '2022-11-07', user: massi)
Investment.create(amount: -24_724_316, date: '2022-11-07', user: mahta)
Investment.create(amount: -46_785_643, date: '2022-11-07', user: mahroo)
Investment.create(amount: -58_344_920, date: '2022-11-07', user: amir_arsalan)

#Azar 19
Rate.create(asset: pelask, price: 3508, date: '2022-12-10')
Rate.create(asset: kerman, price: 808, date: '2022-12-10')

Investment.create(amount: -24_960_027, date: '2022-12-10', user: somayeh_gh)
Investment.create(amount: 24_960_027, date: '2022-12-10', user: behnam)


#Dey 23
Rate.create(asset: pelask, price: 4413, date: '2023-01-13')
Rate.create(asset: kerman, price: 1103, date: '2023-01-13')

#Dey 27
Rate.create(asset: pelask, price: 4625, date: '2023-01-17')
Rate.create(asset: kerman, price: 1160, date: '2023-01-17')

Investment.create(amount: 5_000_000, date: '2023-01-17', user: masoumeh)

#Dey 28
Rate.create(asset: pelask, price: 4512, date: '2023-01-17')
Rate.create(asset: kerman, price: 1210, date: '2023-01-17')

Investment.create(amount: 6_000_000, date: '2023-01-18', user: arian)
Investment.create(amount: 26_251_731, date: '2023-01-18', user: behnam)

# Bahman 3
Transaction.create(asset: dey, qty: 41_987, amount: 37_251_312, date: '2023-01-23')

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


# Esfand 28
Rate.create(asset: pelask, price: 4511, date: '2023-03-19')
Rate.create(asset: kerman, price: 1236, date: '2023-03-19')
Rate.create(asset: dey, price: 889, date: '2023-03-19')

# Farvardin 5
Rate.create(asset: pelask, price: 4500, date: '2023-03-25')
Rate.create(asset: kerman, price: 1327, date: '2023-03-25')
Rate.create(asset: dey, price: 935, date: '2023-03-25')
Investment.create(amount: 200_000_000, date: '2023-03-25', user: somayeh_kh)
Transaction.create(asset: dana, qty: 65_054, amount: 200_000_053, date: '2023-03-25')

# Farvardin 16
Rate.create(asset: pelask, price: 5571, date: '2023-04-05')
Rate.create(asset: kerman, price: 1466, date: '2023-04-05')
Rate.create(asset: dey, price: 1119, date: '2023-04-05')
Rate.create(asset: dana, price: 3470, date: '2023-04-05')

# Farvardin 21
Transaction.create(asset: dana, qty: -65_054, amount: -263_278_065, date: '2023-04-10')
Rate.create(asset: pelask, price: 5970, date: '2023-04-10')
Rate.create(asset: kerman, price: 1535, date: '2023-04-10')
Rate.create(asset: dey, price: 1137, date: '2023-04-10')
