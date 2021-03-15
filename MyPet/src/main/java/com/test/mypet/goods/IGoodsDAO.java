package com.test.mypet.goods;

import java.util.HashMap;
import java.util.List;


public interface IGoodsDAO {

	/**
	 * 굿즈 리스트 불러오는 메서드
	 * @param map 카테고리 번호
	 * @return 굿즈 리스트
	 */
	List<GoodsDTO> list(HashMap<String, String> map);

	/**
	 * 굿즈 정보를 불러오는 메서드
	 * @param seqGoods 굿즈 번호
	 * @return 굿즈 정보
	 */
	GoodsDTO goods(String seqGoods);
	
	/**
	 * 주문을 하는 메서드
	 * @param dto 주문제품
	 * @return 성공유무
	 */
	void order(GoodsDTO dto);

	/**
	 * 주문번호를 가져오는 메서드
	 * @param dto
	 * @return seqOrder
	 */
	int getSeqOrder(GoodsDTO dto);


}
