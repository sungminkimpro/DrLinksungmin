package kr.co.Dr_Link.mvc.dao;

import java.util.List;

import kr.co.Dr_Link.mvc.dto.DrLinkDTO;
import kr.co.Dr_Link.mvc.dto.PrescriptionDTO;

public interface PrescriptionDaoInter {
	public void insertPrescription(PrescriptionDTO vo);
	public List<PrescriptionDTO> detail_prescription(PrescriptionDTO vo) ;
	public DrLinkDTO drLink_info(DrLinkDTO vo);
}
