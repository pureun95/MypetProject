package com.test.mypet.shelter;

import java.util.HashMap;
import java.util.List;

public interface IShelter {

	List<ShelterDTO> list(HashMap<String, String> map);

	List<ShelterDTO> get(String seq);
	/*ShelterVolDTO get(String seq);*/

	List<LocationDTO> location();

	int edit(ShelterDTO sdto);

	int getTotalCount(HashMap<String, String> map);

}
