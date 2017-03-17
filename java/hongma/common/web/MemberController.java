package hongma.common.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	/*@Autowired
	SistMemberService sistMemberService;*/
	
	@RequestMapping(value="index.do", method=RequestMethod.GET)
	public String index(Model model) throws Exception{
		logger.info("index.do 이동 ");
		
		return "index.tiles";
	}
	
	@RequestMapping(value="regi.do", method=RequestMethod.GET)
	public String regi(Model model) throws Exception{
		logger.info("regi.do 이동");
		
		return "regi.tiles";
	}
	
}
