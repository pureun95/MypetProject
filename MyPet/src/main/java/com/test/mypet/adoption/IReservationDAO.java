package com.test.mypet.adoption;

import java.util.List;

public interface IReservationDAO {

	VwReservationDTO getUserInfo(Object attribute);

	List<VetDTO> getVetList(String address);

	int insertReservation(VwReservationDTO dto);

	List<VwReservationDTO> getMyReservationList(String attribute);

	VwReservationDTO getReservationView(String seqReservation);

	List<VwReservationDTO> getMyReservationListWithNoResponse(String attribute);

	List<VwReservationDTO> getMyReservationListShelter(String attribute);

	List<VwReservationDTO> getMyReservationListShelterWithNoResponse(String attribute);


}
