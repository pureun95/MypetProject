package com.test.mypet.shelter;

import java.util.List;

public interface IShelter {

	List<ShelterDTO> list();

	ShelterDTO get(String seq);

}
