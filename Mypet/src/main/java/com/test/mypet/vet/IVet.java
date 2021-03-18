package com.test.mypet.vet;

import java.util.HashMap;
import java.util.List;

import com.test.mypet.shelter.LocationDTO;

public interface IVet {

	List<VetDTO> list(HashMap<String, String> map);

	VetDTO get(String seq);

	int edit(VetDTO vdto);

	int getTotalCount(HashMap<String, String> map);

	int add(VetDTO vdto);



}
