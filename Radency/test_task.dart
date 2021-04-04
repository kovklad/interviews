
int chooseBestDistance(int t, int k, List<int> ls) {
   var arr2 =[];
   var arr3 =[];
  switch (k){
    case 2: {
      for (var i = 0; i <ls.length-1; i++){
       for (var j = i+1; j < ls.length; j++){
            arr2.add(ls[i]+ls[j]);
        }
      } 
      break;
    }
    case 3: {
      for (var i = 0; i <ls.length-2; i++){
       for (var j = i+1; j < ls.length-1; j++){
         for (var z = j+1; z < ls.length;z++){
            arr2.add(ls[i]+ls[j]+ls[z]);
          }
        }
      } 
      break;
    }
    case 4: {
     for (var i = 0; i <ls.length-3; i++){
       for (var j = i+1; j < ls.length-2; j++){
         for (var z = j+1; z < ls.length-1;z++){
           for (var y = z+1; y < ls.length; y++){
              arr2.add(ls[i]+ls[j]+ls[z]+ls[y]);
           }
          }
        }
      } 
      break;
    }
    case 5: {
     for (var i = 0; i <ls.length-4; i++){
       for (var j = i+1; j < ls.length-3; j++){
         for (var z = j+1; z < ls.length-2;z++){
           for (var y = z+1; y < ls.length-1; y++){
             for (var x = y+1; x < ls.length; x++){
              arr2.add(ls[i]+ls[j]+ls[z]+ls[y]+ls[x]);
             }
           }
          }
        }
      } 
      break;
    }
  }

  for(int i = arr2.length-1; i >= 0; i--){
    if (arr2[i] <= t){
        arr3.add(arr2[i]);
    }
  }
  int res = 0;
  for (int i = 0; i < arr3.length; i++){
    if (res <= arr3[i]){
        res = arr3[i];
    }
  }
  if (arr2.length == 0){ 
    return -1;
  }else if(ls.length < 3 ){
    return -1;  
  }else{
    return res;
  }
}

void main(){
print(chooseBestDistance(259, 4, [51, 56, 58, 59, 61])); //234
print(chooseBestDistance(174, 3, [51, 56, 58, 59, 61])); //173
print(chooseBestDistance(163, 3, [50])); // -1
}