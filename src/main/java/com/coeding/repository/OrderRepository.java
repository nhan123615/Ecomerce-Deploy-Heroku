package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.coeding.entity.CustomerOrder;

@Repository
public interface OrderRepository extends JpaRepository<CustomerOrder, Long> {

	@Query(value = "select count(*) from CustomerOrder o where   extract (day from o.orderDate)  = ?1 "
			+ "and extract (month from o.orderDate)  = ?2 and extract (year from o.orderDate) = ?3 and o.status = true")
	int countOrderToDay(int day, int month, int year);

}