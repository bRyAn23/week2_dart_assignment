// Question 3:
// Validation Logic 2ခု setup လုပ်ပေးရပါမယ်.
// Validation function တွေအတွက် String type parameter တစ်ခု လက်ခံပြီးတော့ bool type return ပြန် ပေးရပါမယ်
// Validation Success ဖြစ်ပါက true return ပြန် ပေးပြီး Validation fail ဖြစ်ပါက false return ပြန် ပေးရပါမယ်.
// ပထမဆုံး Email verification function အတွက် ဝင်လာတဲ့ email မှာ “@gmail.com” ပါဝင်ပါက Validation Success ဖြစ်ပါမယ်.
// ဒါပေမယ် “@gmail.com” အရှေ့မှာ ဘာ character မှမရှိပါက validation fail မှာဖြစ်ပါတယ်.
// “@gmail.com” ရဲ့ အနောက်မှာ character တစ်ခုခု ရှိနေရင် လည်း Validation fail မှာဖြစ်ပါတယ်.
// နောက် တစ်ခုက Phone Number validation ဖြစ်ပါတယ်.
// Phone Number validation အတွက် function မှာတော့
// Phone Number မှာ number အရေအတွက် 10 မဟုတ်ရင် 10 ခုထက် ပိုရမှာဖြစ်ပြီး “+959” နှင့်
// စမှသာ Validation Success ဖြစ်မှာဖြစ်ပါတယ်. Parameter မှာဝင်လာတဲ့ phone number က “09” နှင့် စနေပါက
// အဲ့ဒီ 09 ကို +959 နှင့် replace လုပ်ပြီးမှသာ အပေါ်က validation step ကို ဆက်လုပ်ရပါမယ်.
// Validation နှစ်ခု စလုံးအတွက် Regular Expression မသုံးပဲနှင့် ရေးရမှာဖြစ်ပါတယ်.
void main(){
  String strEmail = "zywint@gmail.com";
  String strPhoneNumber = "09770988809";
  //String strPhoneNumber = "09123";
  String emailResult = checkEmail(strEmail)? "Pass Email." : "Fail Email";
  print(emailResult);
  String phoneResult = checkPhone(strPhoneNumber)? "Pass Phone Number." : "Fail Phone Number";
  print(phoneResult);
}

bool checkEmail(String strEmail){
  bool blStartWith = !strEmail.startsWith("@gmail.com");
  bool blEndWith = strEmail.endsWith("@gmail.com");
  return blStartWith && blEndWith;
}

bool checkPhone(String strPhoneNumber){
  bool blPhNumberCount = false;
  bool blNumberStartWith = false;
  if(strPhoneNumber.startsWith("09")){
    strPhoneNumber = strPhoneNumber.replaceFirst("09", "+959");
  }
  blPhNumberCount = strPhoneNumber.replaceAll("+", "").length >= 10;
  blNumberStartWith = strPhoneNumber.startsWith("+959");
  return blPhNumberCount && blNumberStartWith;
}