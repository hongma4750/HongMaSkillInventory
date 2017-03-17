package hongma.bbs.web;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hongma.bbs.service.exVO;

@Controller
public class exController {

	@Autowired
	exService exservice;
	
	
	@RequestMapping(value="ex.do", method={RequestMethod.GET, RequestMethod.POST})
	public String ex(HttpServletRequest request, Model model) throws Exception{
		
		
		List<exVO> list = exservice.selectEx();
		model.addAttribute("list", list);
		
		return "ex.tiles";
		
	}
	
}
