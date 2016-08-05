package org.egov.works.web.controller.bootcamp;

import org.egov.infra.exception.ApplicationException;
import org.egov.works.bootcamp.Customer;
import org.egov.works.bootcamp.service.BootcampService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/bootcamp")
public class CreateCustomerController {
	
	@Autowired
	private BootcampService bootcampService;
	
	@RequestMapping(value = "/newform" , method = RequestMethod.GET)
	private String ShowCustomerForm(@ModelAttribute("customer") final Customer customer, final Model model) throws ApplicationException {
		
		model.addAttribute("customer", customer);
		
		return "customer-form";
	}
	
	@RequestMapping(value ="/create" , method = RequestMethod.POST)
	private String create(@ModelAttribute("customer") final Customer customer){
		
		bootcampService.create(customer);
		return "customer-success";
	}
}
