//Question 2:
// String type key နှင့် int type value ရှိတဲ့ Map တစ်ခု create လုပ်ပြီး အဲ့ဒီ Map ထဲမှာ Entry 10 ခုထည့်ပေးပါ.
// Entry ရဲ့ Key, value တွေကို ကြိုက်တာပေးလို့ရပါတယ်.
// အဲ့ဒီ Map ထဲက 10000 နှင့် အထက် တန်ဖိုးရှိတဲ့ value တွေရဲ့ ပေါင်းလဒ် ကို ရှာပေးပါ.
void main(){
  Map<String,int> valueMap = {};
  valueMap["1"] = 9999;
  valueMap["2"] = 10000;
  valueMap["3"] = 10001;
  valueMap["4"] = 1000;
  valueMap["5"] = 10002;
  valueMap["6"] = 10003;
  valueMap["7"] = 10004;
  valueMap["8"] = 10005;
  valueMap["9"] = 10006;
  valueMap["10"] = 10007;

  var sum = valueMap.entries
      .where( (e) => e.value >= 10000)
      .fold(0,(int a, b) => a + b.value);
  print(sum);
}