package com.test.mypet.adoption;

import java.util.List;

public interface IReservationDAO {

	VwReservationDTO getUserInfo(Object attribute);

	List<VetDTO> getVetList(String address);

	int insertReservation(VwReservationDTO dto);

	List<VwReservationDTO> getMyReservationList(String attribute);


}
