package com.test.mypet.adoption;

import java.util.List;

public interface IReservationDAO {

	VwReservationDTO getUserInfo(Object id);

	List<VetDTO> getVetList(String address);

	int insertReservation(VwReservationDTO dto);

	List<VwReservationDTO> getMyReservationList(String seqUser);

	VwReservationDTO getReservationView(String seqReservation);

	List<VwReservationDTO> getMyReservationListWithNoResponse(String seqUser);

	List<VwReservationDTO> getMyReservationListShelter(String seqUser);

	List<VwReservationDTO> getMyReservationListShelterWithNoResponse(String seqUser);


}
