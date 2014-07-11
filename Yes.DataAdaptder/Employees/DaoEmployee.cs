﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Yes.EntityFramework;
using Yes.Models;

namespace Yes.DataAdaptder
{
    public class DaoEmployee : IDaoEmployee
    {
        public List<EmployeeModel> GetAllEmployees(int SchoolID = 0)
        {
            try
            {
                using (YesEntities context = new YesEntities())
                {
                    var employees = context.YesEmployees.Select(c => c).ToList();
                    List<EmployeeModel> Employees = null;
                    if (employees!=null)
                    foreach (var employee in employees)
                    {
                        Employees = new List<EmployeeModel>();
                       var Employee = new EmployeeModel();
                       Employee.DesignationID = employee.DesignationID;
                       Employee.EmployeeAddress1 = employee.EmployeeAddress1;
                       Employee.EmployeeAddress2 = employee.EmployeeAddress2;
                       Employee.EmployeeAlternateMobileNo = employee.EmployeeAlternateMobileNo;
                       Employee.EmployeeCity = employee.EmployeeCity;
                       Employee.EmployeeDisctrict = employee.EmployeeDisctrict;
                       Employee.EmployeeEmailID = employee.EmployeeEmailID;
                       Employee.EmployeeFirstName = employee.EmployeeFirstName;
                       Employee.EmployeeID = employee.EmployeeID;
                       Employee.EmployeeLastName = employee.EmployeeLastName;
                       Employee.EmployeeMiddleName = employee.EmployeeMiddleName;
                       Employee.EmployeeMobileNo = employee.EmployeeMobileNo;
                       Employee.EmployeePinCode = employee.EmployeePinCode;
                       Employee.EmployeeState = employee.EmployeeState;

                       Employees.Add(Employee);
                    }
                    return Employees;
                }
            }

            catch (Exception ex)
            {
                return null;
            }
        }
    }
}