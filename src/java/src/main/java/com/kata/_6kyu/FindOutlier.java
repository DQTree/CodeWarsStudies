package com.kata._6kyu;

public class FindOutlier {
    public static int find(int[] integers) {
        int isEven = 0;
        for (int i = 0; i < 3; i++){
            if(integers[i] % 2 == 0){
                isEven++;
            }else{
                isEven--;
            }
        }
        for (int integer : integers) {
            if (isEven > 0 && integer % 2 != 0 || isEven < 0 && integer % 2 == 0) {
                return integer;
            }
        }
        return 0;
    }
}