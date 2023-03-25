# Users
puts 'Defining users ...'

behnam = User.new(email:'b@y.com', full_name: 'بهنام آقاعلی', password: '123456')
behnam.save
naghmeh = User.new(email:'a2@b.c', full_name: 'نغمه قزلباش', password: '123456')
naghmeh.save
masoumeh = User.new(email:'a3@b.c', full_name: 'معصومه قزلباش', password: '123456')
masoumeh.save
maman_bozorg = User.new(email:'a4@b.c', full_name: 'مامان بزرگ', password: '123456')
maman_bozorg.save
jalal = User.new(email:'a5@b.c', full_name: 'جلال قزلباش', password: '123456')
jalal.save
amir_arsalan = User.new(email:'a6@b.c', full_name: 'امیر ارسلان', password: '123456')
amir_arsalan.save
noushin = User.new(email:'a7@b.c', full_name: 'نوشین رازانی', password: '123456')
noushin.save
arian = User.new(email:'a20@b.c', full_name: 'آرین رازانی', password: '123456')
arian.save
mahdi = User.new(email:'a8@b.c', full_name: 'مهدی آقاعلی', password: '123456')
mahdi.save
amir_hosein = User.new(email:'a9@b.c', full_name: 'امیرحسین قزلباش', password: '123456')
amir_hosein.save
mahta = User.new(email:'a10@b.c', full_name: 'مهتا قزلباش', password: '123456')
mahta.save
mahroo = User.new(email:'a11@b.c', full_name: 'مهرو قزلباش', password: '123456')
mahroo.save
ava = User.new(email:'a12@b.c', full_name: 'آوا قزلباش', password: '123456')
ava.save
hana = User.new(email:'a13@b.c', full_name: 'هانا قزلباش', password: '123456')
hana.save
massi = User.new(email:'a14@b.c', full_name: 'معصومه دارابی', password: '123456')
massi.save
somayeh_kh = User.new(email:'a15@b.c', full_name: 'سمیه خیری', password: '123456')
somayeh_kh.save
elaheh = User.new(email:'a16@b.c', full_name: 'الهه شاهواروق', password: '123456')
elaheh.save
somayeh_gh = User.new(email:'a17@b.c', full_name: 'سمیه قزلباش', password: '123456')
selena = User.new(email:'a21@b.c', full_name: 'سلنا محرمی', password: '123456')
selena.save
amir_ebrahim = User.new(email:'a18@b.c', full_name: 'امیر ابراهیم حضرتیان', password: '123456')
amir_ebrahim.save
sara = User.new(email:'a19@b.c', full_name: 'سارا حضرتیان', password: '123456')
sara.save
sedigheh = User.new(email:'a22@b.c', full_name: 'صدیقه قزلباش', password: '123456')
sedigheh.save

# Assets
puts 'Defining assets ...'

khavar = Asset.new(title: 'خاور')
khavar.save
pelask = Asset.new(title: 'پلاسک')
pelask.save
kerman = Asset.new(title: 'کرمان')
kerman.save
dey = Asset.new(title: 'دی')
dey.save
dana = Asset.new(title: 'دانا')
dana.save


# Operations
puts 'Adding Operations ... '


i1 = Investment.new(amount: 19_517_652, date: '2022-03-21')
i1.user = behnam
i1.save

i2 = Investment.new(amount: 389_805_972, date: '2022-03-21')
i2.user = naghmeh
i2.save

i3 = Investment.new(amount: 21_046_357, date: '2022-03-21')
i3.user = masoumeh
i3.save

i4 = Investment.new(amount: 78_022_364, date: '2022-03-21')
i4.user = maman_bozorg
i4.save

i5 = Investment.new(amount: 18_744_420, date: '2022-03-21')
i5.user = jalal
i5.save

i6 = Investment.new(amount: 59_808_356, date: '2022-03-21')
i6.user = amir_arsalan
i6.save

i7 = Investment.new(amount: 21_189_614, date: '2022-03-21')
i7.user = noushin
i7.save

i8 = Investment.new(amount: 77_82_565, date: '2022-03-21')
i8.user = mahdi
i8.save

i9 = Investment.new(amount: 21_701_721, date: '2022-03-21')
i9.user = amir_hosein
i9.save

i10 = Investment.new(amount: 20_563_855, date: '2022-03-21')
i10.user = mahta
i10.save

i11 = Investment.new(amount: 38_912_833, date: '2022-03-21')
i11.user = mahroo
i11.save

i12 = Investment.new(amount: 53_691_081, date: '2022-03-21')
i12.user = ava
i12.save

i13 = Investment.new(amount: 38_912_842, date: '2022-03-21')
i13.user = hana
i13.save

i14 = Investment.new(amount: 16_755_219, date: '2022-03-21')
i14.user = massi
i14.save

i15 = Investment.new(amount: 97_305_515, date: '2022-03-21')
i15.user = somayeh_kh
i15.save

i16 = Investment.new(amount: 16_755_219, date: '2022-03-21')
i16.user = elaheh
i16.save

i17 = Investment.new(amount: 16_755_219, date: '2022-03-21')
i17.user = somayeh_gh
i17.save

i18 = Investment.new(amount: 32_445_587, date: '2022-03-21')
i18.user = amir_ebrahim
i18.save

i19 = Investment.new(amount: 32_445_587, date: '2022-03-21')
i19.user = sara
i19.save


t1 = Transaction.new(asset: khavar, qty: 536_696, amount: 666_286_616, date: '2022-03-21')
t1.save

t2 = Transaction.new(asset: pelask, qty: 107_126, amount: 335_875_362, date: '2022-03-21')
t2.save

t3 = Transaction.new(asset: khavar, qty: -536_696, amount: -999_045_436, date: '2022-04-27')
t3.save


# Ordibehesht 12
r1 = Rate.new(asset: khavar, price: 1863, date: '2022-05-17')
r1.save

r2 = Rate.new(asset: pelask, price: 3262, date: '2022-05-17')
r2.save

i20 = Investment.new(amount: -70_000_000, date: '2022-05-02')
i20.user = naghmeh
i20.save

r3 = Rate.new(asset: khavar, price: 1254, date: '2022-05-17')
r3.save

r4 = Rate.new(asset: pelask, price: 3556, date: '2022-05-17')
r4.save


# Ordibehesht 28

t4 = Transaction.new(asset: khavar, qty: 547_740, amount: 928_828_599, date: '2022-05-18')
t4.save

# Shahrivar 6
t4 = Transaction.new(asset: khavar, qty: -547_740, amount: -1_103_756_152, date: '2022-08-28')
t4.save



t5 = Transaction.new(asset: kerman, qty: 1_312_364, amount: 1_103_755_304, date: '2022-08-28')
t5.save


# Aban 4
r5 = Rate.new(asset: pelask, price: 2784, date: '2022-11-05')
r5.save

r6 = Rate.new(asset: kerman, price: 657, date: '2022-11-05')
r6.save


# Aban 14
t4 = Transaction.new(asset: pelask, qty: -60_000, amount: -165_688_992, date: '2022-11-05')
t4.save

# واریز 15 میلیون تومان به حساب علیرضا قزلباش

i21 = Investment.new(amount: -20_145_120, date: '2022-11-07')
i21.user = massi
i21.save

i22 = Investment.new(amount: -24_724_316, date: '2022-11-07')
i22.user = mahta
i22.save

i23 = Investment.new(amount: -46_785_643, date: '2022-11-07')
i23.user = mahroo
i23.save

i24 = Investment.new(amount: -58_344_920, date: '2022-11-07')
i24.user = amir_arsalan
i24.save


#Azar 19

r7 = Rate.new(asset: pelask, price: 3508, date: '2022-12-10')
r7.save

r8 = Rate.new(asset: kerman, price: 808, date: '2022-12-10')
r8.save

i25 = Investment.new(amount: -24_960_027, date: '2022-12-10')
i25.user = somayeh_gh
i25.save

i26 = Investment.new(amount: 24_960_027, date: '2022-12-10')
i26.user = behnam
i26.save

#Dey 23

r9 = Rate.new(asset: pelask, price: 4413, date: '2023-01-13')
r9.save

r10 = Rate.new(asset: kerman, price: 1103, date: '2023-01-13')
r10.save


#Dey 27

r11 = Rate.new(asset: pelask, price: 4512, date: '2023-01-17')
r11.save

r12 = Rate.new(asset: kerman, price: 1210, date: '2023-01-17')
r12.save


i27 = Investment.new(amount: 5_000_000, date: '2023-01-17')
i27.user = masoumeh
i27.save


#Dey 28

i28 = Investment.new(amount: 6_000_000, date: '2023-01-18')
i28.user = arian
i28.save

i29 = Investment.new(amount: 26_251_731, date: '2023-01-18')
i29.user = behnam
i29.save


# Bahman 3

t6 = Transaction.new(asset: dey, qty: 41_987, amount: 37_251_312, date: '2023-01-23')
t6.save


# Esfand 22

i30 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i30.user = mahdi
i30.save

i31 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i31.user = noushin
i31.save

i32 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i32.user = amir_hosein
i32.save

i33 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i33.user = naghmeh
i33.save

i34 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i34.user = arian
i34.save

i35 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i35.user = mahta
i35.save

i36 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i36.user = ava
i36.save

i37 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i37.user = hana
i37.save

i38 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i38.user = mahroo
i38.save

i39 = Investment.new(amount: 3_000_000, date: '2023-03-13')
i39.user = selena
i39.save

i40 = Investment.new(amount: 10_000_000, date: '2023-03-13')
i40.user = sedigheh
i40.save

i41 = Investment.new(amount: 10_000_000, date: '2023-03-13')
i41.user = somayeh_kh
i41.save

t7 = Transaction.new(asset: dey, qty: 61_203, amount: 50_000_173, date: '2023-03-13')
t7.save


# Esfand 28
r13 = Rate.new(asset: pelask, price: 4511, date: '2023-03-19')
r13.save

r14 = Rate.new(asset: kerman, price: 1236, date: '2023-03-19')
r14.save

r15 = Rate.new(asset: dey, price: 889, date: '2023-03-19')
r15.save