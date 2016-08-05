package org.egov.works.bootcamp.repository;

import java.io.Serializable;

import org.egov.works.bootcamp.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BootcampRepository extends JpaRepository<Customer, Serializable> {
    

}
