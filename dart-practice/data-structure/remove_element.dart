void main(List<String> args) {
  List<int> nums = [0,1,2,2,3,0,4,2];
  List<int> expected = [0,1,4,0,3];
  int val = 2;
  int res =removeElement(nums, val);

  assert( res == expected.length, 'No son iguales');
  print(res);
  print(nums);
}

int removeElement(List<int> nums, int val){
  // nums.sort();
  int k = 0;
  nums.forEach((element) {
    if(element != val){
      print("Suma uno");
      k++;
      print("Cuenta: ${k}");
    }
  });
  nums.removeWhere((element) => element == val);
  return k;
}