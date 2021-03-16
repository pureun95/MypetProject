package com.test.mypet.board;

import java.util.List;

public interface IFaq {

	List<FaqDTO> list();

	FaqDTO get(String seq);


}
