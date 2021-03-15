package com.test.mypet.vet;

import java.util.List;

public interface IVet {

	List<VetDTO> list();

	VetDTO get(String seq);

}
