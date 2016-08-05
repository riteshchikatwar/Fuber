package org.egov.works.web.controller.bootcamp;

import org.egov.infra.exception.ApplicationException;
import org.egov.works.bootcamp.Cab;
import org.egov.works.bootcamp.service.CabService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/bootcamp")
public class CreateCabController {
	
	@Autowired
	private CabService cabService;
	
	@RequestMapping(value="/cabnewform")
	private String showCabForm(@ModelAttribute("cab") final Cab cab, final Model model) throws ApplicationException {
		model.addAttribute("cab", cab);
		return "cab_newform";
	}
	
	@RequestMapping(value = "/create-cab")
	private String create(@ModelAttribute("cab") final Cab cab) {
		
		cabService.create(cab);
		
		return "customer-success";
		
	}

}
