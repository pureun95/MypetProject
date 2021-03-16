package com.test.mypet.shelter;

import java.util.HashMap;
import java.util.List;

public interface IShelter {

	List<ShelterDTO> list(HashMap<String, String> map);

	ShelterDTO get(String seq);

	List<LocationDTO> location();

}
