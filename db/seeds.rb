u1 = User.new(email:'b@y.com', full_name: 'بهنام آقاعلی', password: '123456')
u1.save
u2 = User.new(email:'a2@b.c', full_name: 'تغمه قزلباش', password: '123456')
u2.save
u3 = User.new(email:'a3@b.c', full_name: 'معصومه قزلباش', password: '123456')
u3.save
u4 = User.new(email:'a4@b.c', full_name: 'مامان بزرگ', password: '123456')
u4.save
u5 = User.new(email:'a5@b.c', full_name: 'جلال قزلباش', password: '123456')
u5.save
u6 = User.new(email:'a6@b.c', full_name: 'امیر ارسالان', password: '123456')
u6.save
u7 = User.new(email:'a7@b.c', full_name: 'نوشین رازانی', password: '123456')
u7.save
u8 = User.new(email:'a8@b.c', full_name: 'مهدی آقاعلی', password: '123456')
u8.save
u9 = User.new(email:'a9@b.c', full_name: 'امیرحسین قزلباش', password: '123456')
u9.save
u10 = User.new(email:'a10@b.c', full_name: 'مهتا قزلباش', password: '123456')
u10.save
u11 = User.new(email:'a11@b.c', full_name: 'مهرو قزلباش', password: '123456')
u11.save
u12 = User.new(email:'a12@b.c', full_name: 'آوا قزلباش', password: '123456')
u12.save
u13 = User.new(email:'a13@b.c', full_name: 'هانا قزلباش', password: '123456')
u13.save
u14 = User.new(email:'a14@b.c', full_name: 'معصومه دارابی', password: '123456')
u14.save
u15 = User.new(email:'a15@b.c', full_name: 'سمیه خیری', password: '123456')
u15.save
u16 = User.new(email:'a16@b.c', full_name: 'الهه شاهواروق', password: '123456')
u16.save
u17 = User.new(email:'a17@b.c', full_name: 'سمیه قزلباش', password: '123456')
u17.save
u18 = User.new(email:'a18@b.c', full_name: 'امیر ابراهیم حضرتیان', password: '123456')
u18.save
u19 = User.new(email:'a19@b.c', full_name: 'سارا حضرتیان', password: '123456')
u19.save

ass1 = Asset.new(title: 'خاور')
ass1.save
ass2 = Asset.new(title: 'پلاسک')
ass2.save

i1 = Investment.new(amount: 19_517_652, date: '2022-03-21')
i1.user = u1
i1.save

i2 = Investment.new(amount: 389_805_972, date: '2022-03-21')
i2.user = u2
i2.save

i3 = Investment.new(amount: 21_046_357, date: '2022-03-21')
i3.user = u3
i3.save

i4 = Investment.new(amount: 78_022_364, date: '2022-03-21')
i4.user = u4
i4.save

i5 = Investment.new(amount: 18_744_420, date: '2022-03-21')
i5.user = u5
i5.save

i6 = Investment.new(amount: 59_808_356, date: '2022-03-21')
i6.user = u6
i6.save

i7 = Investment.new(amount: 21_189_614, date: '2022-03-21')
i7.user = u7
i7.save

i8 = Investment.new(amount: 77_82_565, date: '2022-03-21')
i8.user = u8
i8.save

i9 = Investment.new(amount: 21_701_721, date: '2022-03-21')
i9.user = u9
i9.save

i10 = Investment.new(amount: 20_563_855, date: '2022-03-21')
i10.user = u10
i10.save

i11 = Investment.new(amount: 38_912_833, date: '2022-03-21')
i11.user = u11
i11.save

i12 = Investment.new(amount: 53_691_081, date: '2022-03-21')
i12.user = u12
i12.save

i13 = Investment.new(amount: 38_912_842, date: '2022-03-21')
i13.user = u13
i13.save

i14 = Investment.new(amount: 16_755_219, date: '2022-03-21')
i14.user = u14
i14.save

i15 = Investment.new(amount: 97_305_515, date: '2022-03-21')
i15.user = u15
i15.save

i16 = Investment.new(amount: 16_755_219, date: '2022-03-21')
i16.user = u16
i16.save

i17 = Investment.new(amount: 16_755_219, date: '2022-03-21')
i17.user = u17
i17.save

i18 = Investment.new(amount: 32_445_587, date: '2022-03-21')
i18.user = u18
i18.save

i19 = Investment.new(amount: 32_445_587, date: '2022-03-21')
i19.user = u19
i19.save


t1 = Transaction.new(asset: ass1, qty: 536_696, amount: 666_286_616, date: '2022-03-21')
t1.save

t2 = Transaction.new(asset: ass2, qty: 107_126, amount: 335_875_362, date: '2022-03-21')
t2.save

t3 = Transaction.new(asset: ass1, qty: -536_696, amount: -999_045_436, date: '2022-04-27')
t3.save


# Ordibehesht 12
r1 = Rate.new(asset: ass1, price: 1863, date: '2022-05-17')
r1.save

r2 = Rate.new(asset: ass2, price: 3262, date: '2022-05-17')
r2.save

i20 = Investment.new(amount: -70_000_000, date: '2022-05-02')
i20.user = u2
i20.save

r3 = Rate.new(asset: ass1, price: 1254, date: '2022-05-17')
r3.save

r4 = Rate.new(asset: ass2, price: 3556, date: '2022-05-17')
r4.save


# Ordibehesht 28

t4 = Transaction.new(asset: ass1, qty: 547_740, amount: 928_828_599, date: '2022-05-18')
t4.save

# Shahrivar 6
t4 = Transaction.new(asset: ass1, qty: -547_740, amount: -1_103_756_152, date: '2022-08-28')
t4.save

ass3 = Asset.new(title: 'کرمان')
ass3.save

t5 = Transaction.new(asset: ass3, qty: 1_312_364, amount: 1_103_755_304, date: '2022-08-28')
t5.save


# Aban 4
r5 = Rate.new(asset: ass2, price: 2784, date: '2022-11-05')
r5.save

r6 = Rate.new(asset: ass3, price: 657, date: '2022-11-05')
r6.save

