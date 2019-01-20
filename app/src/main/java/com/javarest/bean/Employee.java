package com.javarest.bean;

import javax.persistence.*;

@Entity
@Table(name = "employees")

//@EntityListeners(AuditingEntityListener.class)

public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String firstname;
    private String middleinitial;
    private String lastname;
    private String dateofbirth;
    private String dateofemployment;
    private String status;

    public Integer getId() {
  		return id;
  	}

  	public void setId(Integer id) {
  		this.id = id;
  	}

    public String getfirstname() {
  		return firstname;
  	}

  	public void setfirstname(String firstname) {
  		this.firstname = firstname;
  	}

    public String getlastname() {
      return lastname;
    }

    public void setlastname(String lastname) {
      this.lastname = lastname;
    }

    public String getmiddleinitial() {
      return middleinitial;
    }

    public void setmiddleinitial(String middleinitial) {
      this.middleinitial = middleinitial;
    }

    public String getStatus() {
      return status;
    }

    public void setStatus(String status) {
      this.status = status;
    }

    public String getdateofbirth() {
      return dateofbirth;
    }

    public void setdateofbirth(String dateofbirth) {
      this.dateofbirth = dateofbirth;
    }

    public String getdateofemployment() {
      return dateofemployment;
    }

    public void setdateofemployment(String dateofemployment) {
      this.dateofemployment = dateofemployment;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", firstname='" + firstname + '\'' +
                ", middleinitial='" + middleinitial + '\'' +
                ", lastname='" + lastname + '\'' +
                ", dateofbirth='" + dateofbirth + '\'' +
                ", dateofemployment='" + dateofemployment + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
