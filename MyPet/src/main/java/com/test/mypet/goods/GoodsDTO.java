package com.test.mypet.goods;

import lombok.Data;

@Data
public class GoodsDTO {
	
	private String seqGoods;
	private String companyName;
	private String seqCategory;
	private String category;
	private String image;
	private String name;
	private String price;
	
	private String seqUser;
	private String goodsCnt;
	private String totalPrice;
	
}
