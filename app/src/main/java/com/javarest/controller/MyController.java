package com.javarest.controller;

import com.javarest.bean.Employee;
import com.javarest.repository.EmployeeRepository;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/employee")

public class MyController {

    @Autowired
    EmployeeRepository employeeRepository;

    @GetMapping("/getall")
    public List<Employee> _getAll() {
      return employeeRepository.getAll();
    }

    @PostMapping("/add")
    public Employee createEmployee(@RequestBody Employee employee) {
        return employeeRepository.save(employee);
    }

    @GetMapping("/{id}")
    public List<Employee> _myfindById(@PathVariable(value = "id") Integer employeeId) {
        return employeeRepository.myfindById(employeeId);
    }

    @GetMapping("/delete/{id}")
    //914a8f2bd7e5e5681c8e89e8fb535be2
    public String _mydelById(
        @RequestHeader(name = "Authorization", required = true) String authHeader,
        @PathVariable(value = "id") Integer employeeId) {
          if (authHeader.equals("914a8f2bd7e5e5681c8e89e8fb535be2")) {
              employeeRepository.mydelById(employeeId);
              return "Employee has been deleted";
          } else {
              return "This action has been denied.  Proper authorization has not been sent.";
          }
    }

    @PutMapping("/update/{id}")
    	Employee updateEmployee(@RequestBody Employee employee, @PathVariable(value = "id") Integer id) {
            employee.setId(id);
    				return employeeRepository.save(employee);
    	}

  }

/*
Get employees by an ID
Create new employee
Update existing employee
Delete employee

*/
