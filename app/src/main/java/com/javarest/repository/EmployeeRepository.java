package com.javarest.repository;

import com.javarest.bean.Employee;
import java.util.List;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
  /*@Query("SELECT e from employees e where e.status = 'active'")
  List<Employee> allActiveEmployees();  */

  @Query("select e from Employee e where e.id = ?1 and status='active'")
  List<Employee> myfindById(Integer employeeId);

  @Transactional
  @Modifying
  @Query("update Employee e SET e.status = 'inactive' where e.id = ?1")
  void mydelById(Integer employeeId);

  @Query("select e from Employee e where status='active'")
  List<Employee> getAll();

}
