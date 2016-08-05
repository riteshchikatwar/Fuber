package org.egov.works.web.controller.bootcamp;

import org.egov.infra.exception.ApplicationException;
import org.egov.works.bootcamp.BootcampSearchRequest;
import org.egov.works.bootcamp.Cab;
import org.egov.works.bootcamp.service.CabService;
import org.egov.works.web.adaptor.CabJsonAdaptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping(value = "/bootcamp")
public class SearchCabController {

	@Autowired
	private CabService cabService;
	
	@Autowired
	private CabJsonAdaptor cabJsonAdaptor; 
	
	@RequestMapping(value = "/searchform", method = RequestMethod.GET)
    public String showSearchLineEstimateForLoa(@ModelAttribute final BootcampSearchRequest SearchRequest,
            final Model model) throws ApplicationException {
        model.addAttribute("SearchRequest", SearchRequest);
        return "search-cab";
    }
	
	/*@RequestMapping(value = "/ajaxsearch", method = RequestMethod.POST, produces = MediaType.TEXT_PLAIN_VALUE)
    public @ResponseBody String ajaxsearch(final Model model,
            @ModelAttribute final BootcampSearchRequest bootcampSearchRequest) {
        final Cab searchResultList = cabService.searchCabs(bootcampSearchRequest);
        final String result = new StringBuilder("{ \"data\":").append(toSearchCabResultJson(searchResultList))
                .append("}").toString();
        return result;
    }
	
    public Object toSearchCabResultJson(final Object object) {
        final GsonBuilder gsonBuilder = new GsonBuilder();
        final Gson gson = gsonBuilder.registerTypeAdapter(Cab.class, cabJsonAdaptor).create();
        final String json = gson.toJson(object);
        return json;
    }*/
    
}
