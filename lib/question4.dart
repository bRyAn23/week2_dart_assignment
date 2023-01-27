// Question 4:
// String type key နှင့် Nullable integer type value ရှိတဲ့ Map တစ််ခု create လုပ်ရပါမယ်.
// အဲ့ဒီ ထဲမှာ Entry 8 ခု ထည့်ပေးရပါမယ်. ‘null’ value နှင့် Entry အနည်းဆုံး တစ်ခု ပါအောင် ထည့်ပေးပါ.
// value ‘null’ ဖြစ်နေတဲ့ Entry တွေကို Map ထဲကနေ remove လုပ်ပေးရပါမယ်.
// ကျန်ခဲ့တဲ့ Entry တွေရဲ့ key တွေကို comma separated string တစ်ခု create လုပ်ပြီး print ထုတ်ပေးရပါမယ်.
void main(){
  Map<String,int?> valueMap = {};
  valueMap["1"] = 10;
  valueMap["2"] = null;
  valueMap["3"] = 30;
  valueMap["4"] = 40;
  valueMap["5"] = null;
  valueMap["6"] = 60;
  valueMap["7"] = 70;
  valueMap["8"] = 80;
  valueMap.removeWhere(
      (key,value) => value == null
  );
  print(valueMap.toString());

  print(valueMap.keys.toString()
      .replaceAll("(","").replaceAll(")",""));
}