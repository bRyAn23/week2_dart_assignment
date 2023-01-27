// Question 1 :
// Number အခု 20 ပါတဲ့ integer List တစ်ခု create လုပ်ပေးပါ.
// အဲ့ဒီ integer list မှာ duplicate တန်ဖိုးတွေပါဝင်ရပါမယ်.
// အဲ့ဒီ list ကနေ ပြီး duplicate တန်ဖိုးတွေမပါဝဝင်တဲ့ list တစ်ခု create လုပ်နိုင်မယ် program ကိုရေးပေးပါ.
void main(){
    List<int> lstValue = [1,2,2,3,4,5,6,7,8,9,10,11,10,15,12,13,14,15,16,16];
    print(lstValue.length);

    var distinctValue = lstValue.toSet().toList();
    print(distinctValue);
    print(distinctValue.length);
}