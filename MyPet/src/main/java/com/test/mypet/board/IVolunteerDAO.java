package com.test.mypet.board;

import java.util.HashMap;
import java.util.List;


public interface IVolunteerDAO {
	
	public VolunteerDTO getSeqUser(String id);
	
	public List<VolunteerDTO> list(HashMap<String, String> map);

	public int getTotalCount(HashMap<String, String> map);
	
	public List<VolunteerDTO> getView(String seqVolunteer);
	
	public List<VolunteerDTO> getForNext(String seqVolunteer);
	
	public List<VolunteerDTO> getMaxMin();

	public int applyVolunteer(HashMap<String, String> map);
	
}
