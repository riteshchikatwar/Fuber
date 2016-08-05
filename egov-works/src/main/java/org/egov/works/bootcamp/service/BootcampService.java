package org.egov.works.bootcamp.service;

import java.util.List;

import org.egov.works.bootcamp.Customer;
import org.egov.works.bootcamp.repository.BootcampRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class BootcampService {
    
    @Autowired
    private BootcampRepository bootcampRepository;
    
    @Transactional
    public Customer create(final Customer customer) {
        final Customer newCustomer = bootcampRepository.save(customer);
        return newCustomer;
    }
    
    public List<Customer> getAllCustomer(){
     return bootcampRepository.findAll();
    }

}
