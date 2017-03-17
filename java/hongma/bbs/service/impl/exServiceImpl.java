package hongma.bbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hongma.bbs.service.exVO;
import hongma.bbs.web.exService;

@Service
public class exServiceImpl implements exService{

	@Autowired
	private exDAO exdao;
	
	
	@Override
	public List<exVO> selectEx() {
		
		
		List<exVO> list = null;
		try {
			list = exdao.selectEx();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}

}
