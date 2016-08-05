package org.egov.works.bootcamp.repository;

import java.io.Serializable;

import org.egov.works.bootcamp.Cab;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CabRepository extends JpaRepository<Cab, Serializable> {
    

}
