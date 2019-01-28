package com.lw.utils;

import com.lw.entity.RuntableDomain;

import java.util.LinkedList;
import java.util.List;

public class awardsUtils {
 
	public static List<RuntableDomain> genertateAwardList(String[] record,String[] recordValue){
		 int sign=0;
		 List<RuntableDomain> list = new LinkedList<RuntableDomain>();
     	for (int i=0;i<record.length;i++){
     		RuntableDomain runtableDomain = new RuntableDomain();//奖品信息实体类
				runtableDomain.setId(sign+1);
             runtableDomain.setPrize(record[sign]);
             runtableDomain.setV(Integer.parseInt(recordValue[sign].trim()));
             if (sign==i) {
             	for (int j = record.length-1; j>=0; j--) {
						if(i==j) {
							list.add(sign,runtableDomain);
						}else {
							continue;
						}
					}
             	sign++;
				}else {
					continue;
				}
             
     	}
     	return list;
	}
	
	//抽奖概率的算法 需要改进
    public static Integer generateAward(List<RuntableDomain> list){
    	int length=0;
    	int awardValue = 0;
    	for (int i = 0; i < list.size(); i++) {
			  length+=list.get(i).getV();
		}
    	for (int i = 0; i < list.size(); i++) {
			long result =Math.round(Math.random()*length);
			if(result<list.get(i).getV()&&awardValue==0) {
				 awardValue = list.get(i).getV();
				 

			}else {
				length-=list.get(i).getV();
			}
		}
		
        return awardValue;
    }

}
