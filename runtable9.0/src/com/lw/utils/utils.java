package com.lw.utils;

import java.util.ArrayList;
import java.util.List;

public class utils {
	public static void main(String[] args) {
		int sign=0;
		List<Integer> a = new ArrayList<>();
		for (int i=0;i<6;i++){
    		
           System.out.println(i);
            if (sign==i) {
            	sign++;
            	for (int j = 5; j>=0; j--) {
				
					if(i==j) {
						System.out.println(j);
						a.set(i,i );
						
					System.out.println(i+","
							+j
							+ ","+sign);
					}else {
						continue;
					}
				}
				
			}else {
				continue;
			}
    	}
		System.out.println(a);
	}
}
